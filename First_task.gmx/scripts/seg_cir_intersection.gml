var i_ab = argument0
var i_c = argument1

var ab = Segment(i_ab.a.x, i_ab.a.y, i_ab.b.x, i_ab.b.y)
var c = Circle(i_c.x, i_c.y, i_c.r)

return __seg_cir_intersection(ab, c)
