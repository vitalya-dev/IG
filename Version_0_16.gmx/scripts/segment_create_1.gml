var a = argument0
var b = instance_create(a.x, a.y, OPunto)
/////////////////////////////////////
var segment_ab = instance_create(a.x, a.y, OSegment);
segment_ab.a = a
segment_ab.b = b

return segment_ab

