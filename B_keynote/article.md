# Développer, tester et déployer une application Django

Dans cet article nous allons voir dans les grandes lignes le développement, le test et le déploiement d'abord dans un conteneur **Docker** puis sur un serveur dédié d'une application **Django**.

## ![django](django-logo.png)

**Django** est un web framework écrit en Python qui à l'origine fut développé entre 2003 et 2005 par une équipe spécialisée dans la création et la maintenance de sites journalistiques. En septembre 2008 la version 1.0 voit le jour et après de nombreuses améliorations et un développement actif, nous sommes aujourd'hui à la version 4.0.

### MVT vs. MVC

**Django** utilise l'architecture **MVT** (pour **Model View Template**) qui diffère légérement du **MVC** (**Model View Controller**) utilisé par **Symfony**.

Le **MVC** est un modèle de conception qui sépare le traitement et la représentation des données :

![mvc](images/mvc.png)

*  Le **modèle** constitue la structure logique et les contraintes de l'application representée par une base de données (MySQL, PostgreSQL...)
*  La **vue** gère la représentation et l'affichage des données.
*  Le **contrôleur** joue le rôle de pont entre les deux : il manipule les données et gère le rendu de la **vue**.

En ce qui concerne le **MVT**, la partie contrôleur est directement prise en charge par le framework :

![django](images/django.png)

*  Le **modèle** est similaire à l'architecture **MVC**.
*  La **vue** accède aux données et en gère le rendu.
*  Le **gabarit** (ou **template**) est utilisé par la vue pour le rendu des données.

### Structure du projet

Ici, nous allons créer un simple blog dont voici l'arborescence :

![tree](images/project_structure.png)

### Détail des éléments constitutifs d'une application **Django**

Nous allons définir un **modèle** pour notre application. Un blog étant composé d'articles, nous allons créer un **modèle** qui représentera un **article de notre blog**.

Le modèle **deviendra** une **table** dans une **base de données** et contiendra les **champs** suivants :

| Champ | Description         | Type      |
|-------|---------------------|-----------|
| title | Titre de l'article  | Char(100) |
| date  | Date de publication | DateTime  |
| text  | Texte de l'article  | Text      |

La **clef primaire** sera automatiquement créée par **Django** et porte le nom de `id`.


#### models.py

```python
from django.db import models

class Article(models.Model):
  title = models.CharField(max_length=100)
  date = models.DateTimeField()
  text = models.TextField()
```

Ajouter le modèle à la console d'administration (nous en verrons l'utilité plus tard):

```python
# blog/admin.py

from django.contrib import admin
from blog.models import Article

admin.site.register(Article)

```

#### views.py

```python
from django.views import generic

class IndexView(generic.ListView):
  model = Article
  template_name = 'blog/index.html'
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

#### 
