# Développer, tester et déployer une application Django

Dans cet article nous allons voir dans les grandes lignes le développement, le test et le déploiement d'abord dans un conteneur **Docker** puis sur un serveur dédié d'une application **Django**.

## ![django](images/django-logo.png)

**Django** est un web framework écrit en Python qui à l'origine fut développé entre 2003 et 2005 par une équipe spécialisée dans la création et la maintenance de sites journalistiques. En septembre 2008 la version 1.0 voit le jour et après de nombreuses améliorations et un développement actif, nous sommes aujourd'hui à la version 4.0.

### MVT vs. MVC

**Django** utilise l'architecture **MVT** (pour **Model View Template**) qui diffère légérement du **MVC** (**Model View Controller**) utilisé par **Symfony**.

Le **MVC** est un modèle de conception qui sépare le traitement et la représentation des données :

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

Ici, nous allons créer un simple blog dont voici l'arborescence :

![tree](images/project_structure.png)

### Détail des éléments constitutifs d'une application **Django**

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

admin.site.register(Article)
```

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

#### myblog/urls.py

```python
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
  path('admin/', admin.site.urls),
  path('', include('blog.urls'))
]
```

#### blog/urls.py

```python
from django.urls import path
from .views import IndexView

urlpatterns = [
  path('', IndexView.as_view(), name='index'),
]
```

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

... Et comme le suggère la première ligne ci-dessous, `index.html` est une *extension* de `base.html`

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

![screenshot-1](images/screenshot-1.png)
