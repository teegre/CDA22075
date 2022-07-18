#! /usr/bin/env python
import sys
from bs4 import BeautifulSoup as bs
import requests

def parse_dic(word: str):
  if not word:
    print('erreur: pas de mot en paramètre.')
    return 1
  
  word = word.lower()
  url = 'https://www.littre.org/definition/' + word

  page = requests.get(url)
  soup = bs(page.content, 'html.parser')

  content = soup.find(id='main-content')

  try:
    print(content.h2.get_text())
  except AttributeError:
    print('Mot non trouvé')
    return 1

  print(content.find('div', attrs={'class': 'entete'}).get_text(), '\n')

  definitions = content.find('ul', attrs={'class': 'corps',})

  for element in definitions.children:
    if element.name == 'li':
      for tag in element.children:
        name = tag.name
        text = tag.get_text()
        if name == 'b':
          # if 'class' in tag.attrs.keys() and tag['class'] == 'num':
          if tag.abbr:
            print('(', tag.abbr.get_text(), end=') ')
          else:
            print(text, end=' -- ')
        elif name == 'dfn':
          print(text, end='')
        elif name is None and not text == ' ' and len(text) > 1:
          try:
            if tag.children:
              print(text, end=' ')
          except AttributeError:
            print(text)

if __name__ == '__main__':
  if len(sys.argv) != 2:
    print('Erreur : pas de mot en paramètre !')
    sys.exit(1)
  word = sys.argv[1]
  parse_dic(word)
