var x1 = argument0
var y1 = argument1
////////////////////////////////////
var a = noone
var punto_nearby = instance_nearby(x1, y1, OPunto, self)
if (punto_nearby == noone)
    a = instance_create(x1, y1, OPunto)
else
    a = punto_nearby
/////////////////////////////////////
var segment_ab = instance_create(x1, y1, OSegment);
segment_ab.a = a
return segment_ab

