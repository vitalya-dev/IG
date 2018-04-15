///
var a = argument0;
var b = argument1;

var ab = instance_create(a.x, a.y, OSegment);
ab.a = a
ab.b = b

return ab
