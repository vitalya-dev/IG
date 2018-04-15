var x1 = argument0
var y1 = argument1

var a = instance_create(x1, y1, OPunto)
var b = instance_create(x1, y1, OPunto)

var segment_ab = instance_create(x1, y1, OSegment);
segment_ab.a = a
segment_ab.b = b

return segment_ab

