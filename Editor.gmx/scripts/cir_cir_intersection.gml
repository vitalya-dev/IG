/// Intersection of ab vector with circle o
var o_c = argument0
var o_r = argument1

var c = Circle(o_c.x, o_c.y, o_c.radius)
var r = Circle(o_r.x, o_r.y, o_r.radius)

return __cir_cir_intersection(c, r)

