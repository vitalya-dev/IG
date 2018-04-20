var x1 = argument0
var y1 = argument1
////////////////////////////////////
var a = noone
var punto_nearby = instance_nearby(x1, y1, OPunto, self)
if (punto_nearby == noone)
    a = instance_create(x1, y1, OPunto)
else
    a = punto_nearby
var b = instance_create(x1, y1, OPunto);
a.ref_count += 1
b.ref_count += 1
/////////////////////////////////////
var segment_ab = instance_create(x1, y1, OSegment);
segment_ab.a = a
segment_ab.b = b

return segment_ab

