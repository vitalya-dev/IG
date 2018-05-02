var s = argument0
var d = argument1

var u_d = Vector(d[X] / vector_length(d), d[Y] / vector_length(d));
var l = segment_length(s);

s.b.x = s.a.x + u_d[X] * l
s.b.y = s.a.y - u_d[Y] * l

