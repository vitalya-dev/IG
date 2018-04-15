/// Intersection of ab vector with circle o
var o_ab = argument0
var o_c = argument1

var ab = Vector(o_ab.starte.x, o_ab.starte.y, o_ab.ende.x, o_ab.ende.y)
var c = Circle(o_c.x, o_c.y, o_c.radius)

return __vec_cir_intersection(ab, c)

