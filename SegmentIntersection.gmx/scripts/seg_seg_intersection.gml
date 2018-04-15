var segment_ab = argument0
var segment_cd = argument1

var a_vec = get_vector(segment_ab)
var c_vec = get_vector(segment_cd)
var a = point_create(segment_ab.starte.x, segment_ab.starte.y) 
var c = point_create(segment_cd.starte.x, segment_cd.starte.y)

var denom = a_vec[0] * (-1) * c_vec[1] - a_vec[1] * (-1) * c_vec[0]
if (denom == 0)
    return point_create(noone, noone);

    
var num = (c[0] - a[0]) * (-1) * c_vec[1] - (c[1] - a[1]) * (-1) * c_vec[0]
var s = num / denom 

num = a_vec[0] * (c[1] - a[1]) - a_vec[1] * (c[0] - a[0])
var t = num / denom

if ((0 <= s and s <= 1) and (0 <= t and t <= 1))
    return point_create(a[0] + s * a_vec[0], a[1] + s * a_vec[1]) 
else     
    return point_create(noone, noone);
