var i_s1 = argument0
var i_s2 = argument1

var s1 = Segment(i_s1.a.x, i_s1.a.y, i_s1.b.x, i_s1.b.y)
var s2 = Segment(i_s2.a.x, i_s2.a.y, i_s2.b.x, i_s2.b.y)

return __seg_seg_intersection(s1, s2)
