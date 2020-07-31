# -*- coding: utf-8 -*-
"""
Created on Tue Jun 27 11:25:39 2017

@author: OPdaTe
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Apr 14 10:05:30 2017

@author: OPdaTe
"""
import itertools
import pandas as pd 
import matplotlib.pyplot as plt 
import numpy as np
from matplotlib.pyplot import cm

dataset = pd.read_csv(r"C:\Users\OPdaTe\Documents\Content for disclosure\Tecnologie per acquisire 3D\portable.csv")
group = dataset.groupby(dataset.Core_Technology)
groups_name = group.indices.keys()
marker = itertools.cycle((',', '+', '.', 'o', '*'))

fig = plt.figure()
ax = fig.add_subplot(111)
#ax.scatter(dataset.Ac)

ax.set_yscale('log')
ax.set_xscale('log')
for i in group:
    ax.scatter(i[1].Accuracy_micron,
               i[1].Spatial_Sampling_micron,
                label=i[0],
                marker=marker.next()
                )

colormap = plt.cm.gist_ncar #nipy_spectral, Set1,Paired  
colorst = [colormap(i) for i in np.linspace(0, 0.9,len(ax.collections))]       
for t,j1 in enumerate(ax.collections):
    j1.set_color(colorst[t])


ax.set_xlabel ('Accuracy (micron)')
ax.set_ylabel('Spatial Sampling (micron)')
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.8, box.height])

# Put a legend to the right of the current axis
ax.legend(fontsize='small',loc='center left', bbox_to_anchor=(1, 0.5))
#ax.legend()
ax.grid()


fig2 = plt.figure()
ax2 = fig2.add_subplot(111)
#ax.scatter(dataset.Ac)


ax2.set_yscale('log')
ax2.set_xscale('log')
for i in group:
    ax2.scatter(i[1].Accuracy_micron,
                i[1].area_mm2,
                label=i[0],
                marker=marker.next()
                )

colormap = plt.cm.gist_ncar #nipy_spectral, Set1,Paired  
colorst = [colormap(i) for i in np.linspace(0, 0.9,len(ax2.collections))]       
for t,j1 in enumerate(ax2.collections):
    j1.set_color(colorst[t])


ax2.set_xlabel ('Accuracy (micron)')
ax2.set_ylabel('Area (mm)')
box2 = ax2.get_position()
ax2.set_position([box.x0, box.y0, box.width * 0.8, box.height])

# Put a legend to the right of the current axis
ax2.legend(fontsize='small',loc='center left', bbox_to_anchor=(1, 0.5))
#ax2.legend()
ax2.grid()



