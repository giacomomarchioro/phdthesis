import bpy
from bpy import data as D
from bpy import context as C
from mathutils import *
from math import *

objs = bpy.data.objects
objs.remove(objs["Cube"], do_unlink=True)


plane = bpy.ops.mesh.primitive_plane_add(radius = 1.5, rotation=(0,0.5*3.14,0))
bpy.ops.mesh.primitive_uv_sphere_add(location = (-0.3,0,0))
#bpy.ops.mesh.primitive_uv_sphere_add(location = (0.7,0,0))
#bpy.ops.mesh.primitive_cylinder_add(depth = 0.7,rotation=(0,0.5*3.14,0))
# Get material
plane2 = bpy.data.objects['Plane']
mat = bpy.data.materials.new("Mat_plane")
mat.diffuse_color = (0.5,0.5,0.5)
plane2.data.materials.append(mat)

sphere = bpy.data.objects['Sphere']
mat2 = bpy.data.materials.new("Mat_sphere")
mat2.diffuse_color = (0.1,0.4,1)
sphere.data.materials.append(mat2)
bpy.ops.object.shade_smooth()


camera = bpy.data.objects["Camera"]
camera.location.x = 4
camera.location.y = -9
camera.location.z = 0
camera.rotation_euler[0] = 90*pi/180
camera.rotation_euler[1] = 0
camera.rotation_euler[2] = 20*pi/180


Lamp = bpy.data.objects["Lamp"]
Lamp.location.x = 5
Lamp.location.y = -2
Lamp.location.z = 1.5
Lamp.rotation_euler[0] = 40*pi/180
Lamp.rotation_euler[1] = 4*pi/180
Lamp.rotation_euler[2] = 107*pi/180
