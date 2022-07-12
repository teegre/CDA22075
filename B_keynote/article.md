# Développer et déployer une application Django

Dans cet article nous allons voir dans les grandes lignes le développement, le test et le déploiement d'abord dans un conteneur **Docker** puis sur un serveur dédié d'une application **Django**.

## ![django](images/django-logo.png)

**Django** est un web framework écrit en Python qui à l'origine fut développé entre 2003 et 2005 par une équipe spécialisée dans la création et la maintenance de sites journalistiques. En septembre 2008 la version 1.0 voit le jour et après de nombreuses améliorations et un développement actif, nous sommes aujourd'hui à la version 4.0.

### MVT vs. MVC

**Django** utilise l'architecture **MVT** (pour **Model View Template**) qui diffère légérement du **MVC** (**Model View Controller**) utilisé par **Symfony**.

L'architecture **MVC** est un modèle de conception qui sépare le traitement et la représentation des données :

![mvc](images/mvc.png)

* Le **modèle** constitue la structure logique et les contraintes de l'application representée par une base de données (MySQL, PostgreSQL...)
* La **vue** gère la représentation et l'affichage des données.
* Le **contrôleur** joue le rôle de pont entre les deux : il manipule les données et gère le rendu de la **vue**.

En ce qui concerne le **MVT**, la partie contrôleur est directement prise en charge par le framework :

![django](images/django.png)

* Le **modèle** est similaire à l'architecture **MVC**.
* La **vue** accède aux données et en gère le rendu.
* Le **gabarit** (ou **template**) est utilisé par la vue pour le rendu des données.

### Structure du projet

Ici, nous allons créer un simple **blog** dont voici l'arborescence :

![tree](images/project_structure.png)

### Le modèle

Nous allons définir un **modèle** pour notre application. Un blog étant composé d'articles, nous allons créer un **modèle** qui représentera un **article de notre blog**.

Le modèle **deviendra** une **table** dans une **base de données** et contiendra les **champs** suivants :

| Champ | Description         | Type      |
| ----- | ------------------- | --------- |
| title | Titre de l'article  | Char(100) |
| date  | Date de publication | DateTime  |
| text  | Texte de l'article  | Text      |

La **clef primaire** sera automatiquement créée par **Django** et porte le nom de `id`.

#### blog/models.py

```python
from django.db import models

class Article(models.Model):
  title = models.CharField(max_length=100)
  date = models.DateTimeField()
  text = models.TextField()
```

Ajout du modèle à la console d'administration (nous en verrons l'utilité plus tard):

```python
# blog/admin.py

from django.contrib import admin
from blog.models import Article

admin.site.register(Article) # +
```
### La vue

Maintenant que notre modèle est défini, créons notre **vue** qui se chargera d'afficher tous les articles.

#### blog/views.py

```python
from django.views import generic

class IndexView(generic.ListView):
  # Modèle utilisé pour la vue
  model = Article
  # Gabarit
  template_name = 'blog/index.html'
  # Nom de l'objet dans le gabarit
  context_object_name = 'articles'
```
#### Ajout de l'URL

##### URLs du site web : myblog/urls.py

```python
from django.contrib import admin
from django.urls import include, path # +

urlpatterns = [
  path('admin/', admin.site.urls),
  # Ici on inclut le fichier qui contient les URLs
  # de notre application.
  path('', include('blog.urls'))      # +
]
```

##### URLs de l'application : blog/urls.py

```python
from django.urls import path
from .views import IndexView

urlpatterns = [
  path('', IndexView.as_view(), name='index'),
]
```

### Le gabarit (template)

#### blog/templates/blog/base.html

Ce fichier constitue la base de tous les autres gabarits...

```django
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{% block title %}{% endblock %}</title>
  </head>
  <body>
    {% block body %}
    {% endblock %}
    <hr>
    <footer>
      <span>© {% now 'Y' %} myblog</span>
    </footer>
  </body>
</html>
```

#### blog/templates/blog/index.html

... Et comme le suggère la première ligne ci-dessous, `index.html` est une *extension* de `base.html`. En d'autres termes, tout ce qui se trouve dans `base.html` est repris dans `index.html`.

```django
{% extends 'blog/base.html' %}
{% block title %}MyBlog!{% endblock %}
{% block body %}
  <h1>MyBlog!</h1>
  <ul>
  {% for article in articles %}
    <li>{{ article.date|date:'d/m/Y' }} {{ article.title }}</li>
  {% empty %}
    <li>C'est vide...</li>
  {% endfor %}
  </ul>
{% endblock %}
```

### Le rendu

Pour voir le résultat de notre application, il faut d'abord lancer le serveur **Django** via la ligne de commande :

```console
> ./manage.py runserver 8080
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
July 11, 2022 - 16:35:16
Django version 4.0.6, using settings 'myblog.settings'
Starting development server at http://127.0.0.1:8080/
Quit the server with CONTROL-C.
```
Puis dans le navigateur taper `localhost:8080` dans la barre d'adresse :

![screenshot-1](images/screenshot-1.png)

#### Ajout d'un article

```console
> ./manage.py shell
Python 3.10.5 (main, Jun  6 2022, 18:49:26) [GCC 12.1.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from blog.models import Article
>>> from django.utils import timezone
>>> a = Article()
>>> a.title = "Mon premier article"
>>> a.date = timezone.now()
>>> a.text = "Ceci est mon premier article"
>>> a.save()
>>>

```

**Note** : Il est également possible d'ajouter des articles depuis la console d'administration disponible à l'adresse : `localhost:8080/admin`.
Avant cela, il est nécessaire de créer un *super utilisateur* via la commande `./manage.py createsuperuser` comme suit :

```console
> ./manage.py createsuperuser
Nom d’utilisateur: admin
Adresse électronique: admin@myblog.com
Password:
Password (again):
Superuser created successfully.
>
```
Il est ensuite possible de se connecter à la console d'administration à l'adresse indiquée plus haut.

Après la création de quelques articles, la page ressemble à ceci :

![screenshot-2](images/screenshot-2.png)

En l'état, nous n'avons que la liste des articles. La prochaine étape consistera donc à transformer les éléments de la liste en **liens** vers le **contenu des articles**.

### Afficher un article

Nous devons tout d'abord créer une nouvelle **vue** et son **gabarit** associé, puis  une **URL**, et pour finir, modifier le gabarit `index.html` afin de rendre les **articles consultables**.

#### blog/views.py

```python
from django.views import generic
from .models import Article

class IndexView(generic.ListView):
  model = Article
  template_name = 'blog/index.html'
  context_object_name = 'articles'

class ArticleView(generic.DetailView): # +
  model = Article                      # +
  template_name = 'blog/detail.html'   # +
  context_object_name = 'article'      # +
```

#### blog/urls.py

```python
from django.urls import path
from .views import IndexView, ArticleView                         # +

urlpatterns = [
  path('', IndexView.as_view(), name='index'),
  path('article/<int:pk>', ArticleView.as_view(), name='detail'), # +
]
```

#### blog/templates/blog/index.html

```django
{% extends 'blog/base.html' %}
{% block title %}MyBlog!{% endblock %}
{% block body %}
  <h1>MyBlog!</h1>
  <ul>
  {% for article in articles %}
    {# On ajoute un lien ici #}
    <li><a href="{% url 'detail' article.id %}">{{ article.date|date:'d/m/Y' }} {{ article.title }}</a></li>
  {% empty %}
    <li>C'est vide...</li>
  {% endfor %}
  </ul>
{% endblock %}

```

#### blog/templates/blog/detail.html

```django
{% extends 'blog/base.html' %}
{% block title %}MyBlog! {{ article.title }}{% endblock %}
{% block body %}
<h1>{{ article.title }}</h1>
<time>Publié le {{article.date|date:'d/m/Y' }}</time>
<p>
{{ article.text }}
</p>
<a href="{% url 'index' %}">home</a>
{% endblock %}
```

Voici le résultat :

![screenshot-3](images/screenshot-3.png)

Et lorsque l'on clique sur le premier lien, on obtient :

![screenshot-4](images/screenshot-4.png)

### Les fichiers statiques

Dans **Django** les fichiers statiques sont des fichiers supplémentaires dont nous avons besoin pour notre site web, par exemple des fichiers **Javascript**, des **images** ou du **CSS**.
Au cours du développement, ces fichiers sont stockés dans le répertoire `blog/static/blog/`.

![static_files](images/project_structure_static_files.png)

Ajoutons dès à présent un peu de maquillage à notre blog.

#### blog/static/blog/css/styles.css

```css
html {
  font-family: Roboto, sans-serif;
}

ul {
  list-style: none;
  display: contents;
}

h1 {
  font-size: xxx-large;
}

a {
  color: black;
  text-decoration: none;
  font-weight: bold;
  transition: .25s ease-in-out;
}

a:hover {
  color: red;
  transition: .25s;
}

time {
  font-size: small;
  font-style: italic;
}
```

#### Chargement des fichiers statiques : blog/templates/blog/base.html

```django
{% load static %} {# + #}
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="{% static 'blog/css/styles.css' %}"> {# + #}
    <title>{% block title %}{% endblock %}</title>
  </head>
  <body>
    {% block body %}
    {% endblock %}
    <hr>
    <footer>
      <span>© {% now 'Y' %} myblog</span>
    </footer>
  </body>
</html>
```
