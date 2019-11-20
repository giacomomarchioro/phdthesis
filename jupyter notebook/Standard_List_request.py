#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 24 17:06:54 2019

@author: giacomo
"""

import requests 
from bs4 import BeautifulSoup 
URL_A = "https://www.iso.org/committee/54924/x/catalogue/p/1/u/1/w/1/d/1"
r = requests.get(URL_A) 
  
soup_A = BeautifulSoup(r.content, 'html5lib') 
colsm = soup_A.findAll('h6')
numbers = []
for i in colsm:
    numbers.append(i.find('a').attrs['href'].split('/')[2].split('.')[0])