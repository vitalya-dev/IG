var a = argument0
var b = argument1

var segment_ab = instance_create(a.x, a.y, OSegment);
segment_ab.a = a
segment_ab.b = b

a.ref_count += 1
b.ref_count += 1

return segment_ab 
