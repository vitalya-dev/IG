var x1 = argument0
var y1 = argument1
var d = argument2
////////////////////////////////////
var a = noone
var punto_nearby = instance_nearby(x1, y1, OPunto, self)
if (punto_nearby == noone)
    a = instance_create(x1, y1, OPunto)
else
    a = punto_nearby
var b = instance_create(a.x + d[X] * INFINITE, a.y + d[Y] * INFINITE, OPunto)

/////////////////////////////////////
var ray_ab = instance_create(x1, y1, OSegment);
ray_ab.a = a
ray_ab.b = b

return ray_ab

