var ab = argument0
var cd = argument1


var ab_direction = point(ab[2] - ab[0], ab[3] - ab[1])
var cd_direction = point(cd[2] - cd[0], cd[3] - cd[1])

var a = point(ab[0], ab[1]) 
var c = point(cd[0], cd[1])

var denom = ab_direction[0] * (-1) * cd_direction[1] - ab_direction[1] * (-1) * cd_direction[0];
if (denom == 0)
    return noone

    
var num = (c[0] - a[0]) * (-1) * cd_direction[1] - (c[1] - a[1]) * (-1) * cd_direction[0]
var s = num / denom 

num = ab_direction[0] * (c[1] - a[1]) - ab_direction[1] * (c[0] - a[0])
var t = num / denom

if ((0 <= s and s <= 1) and (0 <= t and t <= 1))
    return point(a[0] + s * ab_direction[0], a[1] + s * ab_direction[1]) 
else     
    return noone;
