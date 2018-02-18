/// Intersection of ab vector with circle o
var o_ab = argument0
var o_c = argument1

var ab = Vector(o_ab.starte[X], o_ab.starte[Y], o_ab.ende[X], o_ab.ende[Y])
var c = Circle(o_c.x, o_c.y, o_c.radius)

return __vec_cir_intersection(ab, c)

