#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 24 15:12:41 2019
Web scraping for ISO website

@author: giacomo
"""

import requests 
from bs4 import BeautifulSoup
import csv 
# First we collect a list of id of the ISO standards 
URL_A = "https://www.iso.org/committee/54924/x/catalogue/p/1/u/1/w/1/d/1"
r = requests.get(URL_A) 
  
soup_A = BeautifulSoup(r.content, 'html5lib') 
colsm = soup_A.findAll('h6')
numbers = []
for i in colsm:
    numbers.append(i.find('a').attrs['href'].split('/')[2].split('.')[0])

# each number is actually an ID used for referencing the standards in the 
# ISO website



with open('ISO.bib','w') as f, open('ISO_TC 213.csv','w') as f2:
    cf2 = csv.writer(f2)
    firstrow = True
    for idx, numb in enumerate(numbers):
        print("%s/%s Working on: %s" %(idx+1,len(numbers),numb))
        tags = {} 
        URL = "https://www.iso.org/standard/%s.html" %numb
        tags['url'] = URL
        r = requests.get(URL) 
        print("Downloaded")  
        soup = BeautifulSoup(r.content, 'html5lib') 
        
         
        quotes=[]  # a list to store quotes 
          
        tags['code'] = soup.findAll('h1')[0].text 
        tags['title'] = soup.findAll('h2')[0].text 
        tags['corrected_version'] = "n.a"
        tags['Publication date'] = 'n.a'
        colsm = soup.findAll('div', attrs = {"class":"col-sm-6"})
        for i in colsm: 
            fields = i.text.split(':')
            if len(fields) == 2:
                tags[fields[0].strip()] = fields[1].strip()
            if len(fields) == 3:
                tags[fields[0].strip()] = fields[1].split('\n')[0].strip()
                tags['corrected_version'] = fields[2].strip()
            if len(fields) == 0:
                tags['Publication date'] = 'n.a'
         
        p = soup.findAll('span', attrs = {"class":"amount", "id":"productPrice"})
        if len(p) >0 :
            tags['price_CF']= p[0].text
        else:
            tags['price_CF']= 0
        if tags['Publication date'] == 'n.a':
            year = 'n.a.'
        else:
            year = tags['Publication date'].split('-')[0]
        latex = """    
@techreport{%s,
address = {Geneva, CH},
type = {Standard},
title = {%s},
author = {%s},
url = {%s},
language = {en},
institution = {International Organization for Standardization},
year = {%s}
}""" %(tags['code'].replace(' ','_'),
              tags['title'],
              tags['code'],
              tags['url'],
              year)
        f.writelines(latex)
        if firstrow:
            cf2.writerow(list(tags.keys()))
            firstrow = False
        cf2.writerow(list(tags.values()))
        print('Completed')
        
