#! /usr/bin/env python

""" https://www.littre.com webscraper """

from os import getenv, makedirs
import argparse
from os.path import exists
from bs4 import BeautifulSoup as bs
import requests

def parse_citation(element):
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

def parse_paragraphe(element):
  """ parse paragraph inside definition """
  print('>', end=' ')
  for tag in element:
    if tag.name == 'dfn':
      dfn = tag.get_text()
      if dfn.endswith(', ') or dfn.endswith(','):
        print(tag.get_text(), end='')
      else:
        print(tag.get_text())
    elif tag.name == 'cite':
      parse_citation(tag)
    elif tag.name == 'p':
      parse_paragraphe(tag)
    elif tag.name == 'sup':
      print(tag.get_text(), end='')
    elif tag.name is None:
      text = tag.get_text()
      if text.endswith('. '):
        print(text)
      elif text != ' ' and len(text) >= 1:
        print(text, end='')

def parse_etymologie_paragraphe(element):
  """ parse etymology paragraph """
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
          parse_paragraphe(element)
        elif element.name == 'cite':
          parse_citation(element)
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

def parse_remarque(content):
  remarque = content.find('div', attrs={'class': 'r remarque'})
  if not remarque:
    return
  print(remarque.h3.get_text())
  for tag in remarque.children:
    if tag.name == 'p':
      parse_paragraphe(tag)
      print()

def parse_historique(content):
  """ parse history section """
  historique = content.find('div', attrs={'class': 'r historique'})
  if not historique:
    return
  print(historique.h3.get_text())
  for tag in historique.children:
    if tag.name == 'p':
      parse_paragraphe(tag)
      print()

def parse_etymologie(content):
  """ parse etymology section """
  etymologie = content.find('div', attrs={'class': 'r etymologie'})
  if not etymologie:
    return
  print(etymologie.h3.get_text())
  for tag in etymologie.children:
    if tag.name == 'p':
      parse_etymologie_paragraphe(tag)
      print()
  print()

def parse_supplement(content):
  supplement = content.find('div', attrs={'class': 'r supplement'})
  if not supplement:
    return
  print(supplement.h3.get_text())
  supplement.h3.decompose()
  if supplement.div:
    supplement = supplement.div
  for tag in supplement.children:
    if tag.name is None:
      print(tag.get_text())
    elif tag.name is not None:
      if tag.name == 'b':
        if tag.abbr:
          print(f'({tag.get_text()}', end=')')
        else:
          print('--', tag.get_text(), end='. ')
      elif tag.name == 'p':
        parse_paragraphe(tag)
      elif tag.name == 'cite':
        parse_citation(tag)
      elif tag.name == 'dfn':
        dfn = tag.get_text()
        if dfn.endswith(', ') or dfn.endswith(','):
          print(tag.get_text(), end='')
        else:
          print(tag.get_text())
      else:
        text = tag.get_text()
        if text != ' ' and len(text) > 1:
          if text.endswith(', '):
            print(text, end='')
          else:
            print(text)

def parse_dic(word: str):
  """
  Obtient les définitions du mot donné en paramètre
  sur https://www.littre.org
  """
  if not word:
    print('erreur: pas de mot en paramètre.')
    return 1

  word = word.lower()
  home = getenv('HOME')
  cache_path = f'{home}/.config/littre/cache'
  # Création du répertoire pour le cache
  # s'il n'existe pas déjà
  if not exists(cache_path):
    makedirs(cache_path)

  cache_file = f'{cache_path}/.{word}'
  cached = False

  # Chargement du fichier en cache
  if exists(cache_file):
    with open(cache_file, 'r', encoding='utf-8') as file:
      page = file.read()
      content = bs(page, 'html.parser')
      cached = True
  else:
    try:
      url = 'https://www.littre.org/definition/' + word
      page = requests.get(url)
    except Exception:
      print('Une erreur est survenue !')
      return 1

    soup = bs(page.content, 'html.parser')
    content = soup.find(id='main-content')
    if content is None:
      print(f'{word.upper()} : non trouvé.')
      return 1

  # Titre
  try:
    print(content.h2.get_text().upper(), end=' ')
    if cached:
      print('[en cache]')
    else:
      # Mise en cache du fichier
      with open(cache_file, 'w', encoding='utf-8') as file:
        file.write(str(content))
      print('[nouveau]')
  except AttributeError: 
    print(f'{word.upper()} : non trouvé.')
    return 1


  # Entête
  print(content.find('div', attrs={'class': 'entete'}).get_text(), '\n')

  # Définitions
  definitions = content.find('ul', attrs={'class': 'corps',})

  parse_definitions(definitions)
  parse_remarque(content)
  parse_historique(content)
  parse_etymologie(content)
  parse_supplement(content)

  return 0

if __name__ == '__main__':
  p = argparse.ArgumentParser(description='Recherche d\'un mot dans le Littré en ligne.')
  p.add_argument('word', metavar='word', type=str, help='Un mot à rechercher')
  args = p.parse_args()
  parse_dic(args.word)
