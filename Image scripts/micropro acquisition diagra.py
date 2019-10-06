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
for i in range(1,10,4):
    plt.arrow(0,i,10,0, shape='full', lw=2, color='grey',fc='grey',ec='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

for i in range(3,8,4):
    plt.arrow(10,i,-10,0, shape='full', lw=2,color='grey',fc='grey', ec='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

for i in range(1,10,4):
    plt.arrow(10,i,0,-2, shape='full', lw=2,color='grey',fc='grey', ec='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

for i in range(3,8,4):
    plt.arrow(0,i,0,-2, shape='full', lw=2,color='grey', fc='grey',ec='grey', length_includes_head=True, head_width=0.5, alpha =0.7)

bbox_props = dict(boxstyle="circle,pad=0.3", fc="black", ec="w", lw=2)
j=0

a = np.array(range(1,21)).reshape(5,4)
rowtoflip = range(0,5,2)
a[rowtoflip,:] = np.fliplr(a[rowtoflip,:])
a3 = a.flatten()[::-1]
for i in range(1,10,2):
    for k in range (2,10,2):
        plt.text(k, i, "%s"%(a3[j]), ha="center", va="center",
                 size=15,
                 bbox=bbox_props,color='w')
        j+=1
plt.vlines(2,0,10)
plt.vlines(8,0,10)     
plt.xlabel('Instrument reference system (mm)')
plt.ylabel('Instrument reference system (mm)')
plt.text(0,9.3,'Offset', fontsize=16 )
plt.text(9,9.3,'Offset', fontsize=16 )
plt.yticks(range(0,10),range(180,190)[::-1])
plt.xticks(range(0,10),range(25,35))
plt.savefig('LeftDownRightDown.svg')

