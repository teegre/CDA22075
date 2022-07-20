#! /usr/bin/env python

""" https://www.littre.com webscraper """

import sys
from os import getenv, makedirs
from os.path import exists
from bs4 import BeautifulSoup as bs
import requests

def parse_cite(element):
  """ parse citations """
  cit = element.q.get_text()
  element.q.decompose()
  try:
    aut = element.a.get_text()
    # element.a.decompose()
  except AttributeError:
    try:
      aut = element.span.span.get_text()
      # element.span.span.decompose()
    except AttributeError:
      aut = '?'
  try:
    ref = element.em.get_text()
  except AttributeError:
    ref = '?'
  element.span.decompose()
  print(f'  * "{cit}", {aut}, {ref}')

def parse_paragraph(element):
  """ parse paragraph inside definition """
  for tag in element:
    if tag.name == 'dfn':
      dfn = tag.get_text()
      if dfn.endswith(', ') or dfn.endswith(','):
        print(tag.get_text(), end='')
      else:
        print(tag.get_text())
    elif tag.name == 'cite':
      parse_cite(tag)
    elif tag.name == 'p':
      parse_paragraph(tag)
    elif tag.name is None:
      text = tag.get_text()
      if text != ' ' and len(text) > 1:
        print('-', text)

def parse_ety_paragraph(element):
  for tag in element.children:
    print(tag.get_text(), end=' ')

def parse_definitions(definitions):
  """ parse definitions """
  while definitions.li is not None:
    for element in definitions.li.children:
      if element.name is not None:
        if element.name == 'b':
          if element.abbr:
            print(f'({element.get_text()}', end=')')
          else:
            print('--', element.get_text(), end='. ')
        elif element.name == 'p':
          parse_paragraph(element)
        elif element.name == 'cite':
          parse_cite(element)
        elif element.name == 'dfn':
          dfn = element.get_text()
          if dfn.endswith(', ') or dfn.endswith(','):
            print(element.get_text(), end='')
          else:
            print(element.get_text())
      else:
        text = element.get_text()
        if text != ' ' and len(text) > 1:
          if text.endswith(', '):
            print(text, end='')
          else:
            print(text)
    definitions.li.decompose()
    print()

def parse_etymologie(content):
  ety = content.find('div', attrs={'class': 'r etymologie'})
  if not ety:
    return 1
  print(ety.h3.get_text())
  for tag in ety.children:
    if tag.name == 'p':
      parse_ety_paragraph(tag)
      print()

def parse_dic(word: str):
  """
  Obtient les définitions du mot donné en paramètre
  sur https://www.littre.org
  """
<<<<<<< HEAD
  # TODO Autres rubriques (Citations, Historique, etc.)
  # TODO Cache
=======
  # TODO Autres rubriques (Citations, Etymologie, Historique, etc.)
>>>>>>> 340bc7e (save words to cache)
  if not word:
    print('erreur: pas de mot en paramètre.')
    return 1

  word = word.lower()
  url = 'https://www.littre.org/definition/' + word
  home = getenv('HOME')
  cache_path = f'{home}/.config/littre/cache'
  # Création du répertoire pour le cache
  # s'il n'existe pas déjà
  if not exists(cache_path):
    makedirs(cache_path)

  cache_file = f'{cache_path}/.{word}'
  cached = False

  if exists(cache_file):
    with open(cache_file, 'r', encoding='utf-8') as file:
      page = file.read()
      content = bs(page, 'html.parser')
      cached = True
  else:
    try:
      page = requests.get(url)
    except Exception:
      print('Une erreur est survenue !')
      return 1

    soup = bs(page.content, 'html.parser')
    content = soup.find(id='main-content')
    if content is None:
      print(f'{word.upper()} : non trouvé.')
      return 1

    with open(cache_file, 'w', encoding='utf-8') as file:
      file.write(str(content))

  # Titre
  print(content.h2.get_text().upper())
  if cached:
    print('[En cache]')

  # Entête
  print(content.find('div', attrs={'class': 'entete'}).get_text(), '\n')

  # Définitions
  definitions = content.find('ul', attrs={'class': 'corps',})

  parse_definitions(definitions)
  parse_etymologie(content)

  return 0

if __name__ == '__main__':
  if len(sys.argv) < 2:
    print('Erreur : pas de mot en paramètre !')
    sys.exit(1)
  WORD = sys.argv[1]
  sys.exit(parse_dic(WORD))
