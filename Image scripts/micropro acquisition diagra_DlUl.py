# -*- coding: utf-8 -*-
"""
Spyder Editor

This temporary script file is located here:
/home/opdate/.spyder2/.temp.py
"""
import numpy as np
import matplotlib.pyplot as plt

plt.rcParams['svg.fonttype'] = 'none'
plt.xlim(-1,11)
plt.ylim(0,10)
for i in [0,4,8,12]:
    plt.arrow(i,1,0,8, shape='full', lw=2, color='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

for i in [2,6,10,14]:
    plt.arrow(i,9,0,-8, shape='full', lw=2, color='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

for i in range(0,15,4):
    plt.arrow(i,9,2,0, shape='full', lw=2, color='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

for i in range(2,15,4):
    plt.arrow(i,1,2,0, shape='full', lw=2, color='grey',  length_includes_head=True, head_width=0.5, alpha =0.7)

bbox_props = dict(boxstyle="circle,pad=0.3", fc="black", ec="w", lw=2)
j=0

a = np.arange(1,19).reshape(6,3)
rowtoflip = range(0,5,2)
a[1::2,:] = np.fliplr(a[1::2,:])
a3 = a.flatten()

for x in [0,2,4,6,8,10]:
    for y in [3,5,7]:
        plt.text(x, y, "%s"%(a3[j]), ha="center", va="center",
                 size=15,
                 bbox=bbox_props,color='w')
        j+=1
plt.hlines(2,-1,11)
plt.hlines(8,-1,11)     
plt.xlabel('Instrument reference system (mm)')
plt.ylabel('Instrument reference system (mm)')
plt.text(-0.5,9.5,'Offset', fontsize=10,rotation=90 )
plt.text(-0.5,1.7,'Offset', fontsize=10,rotation=90 )
plt.yticks(range(0,10),range(180,190)[::-1])
plt.xticks(range(0,10),range(25,35))
plt.savefig('DlUl.svg')

