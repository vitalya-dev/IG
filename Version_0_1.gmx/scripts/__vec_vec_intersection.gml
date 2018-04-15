var ab = argument0
var cd = argument1

// t_ - transformation. In that case - move to origin.
var t_ab = Point(ab[X2] - ab[X1], ab[Y2] - ab[Y1]);
var t_cd = Point(cd[X2] - cd[X1], cd[Y2] - cd[Y1]);

var a = Point(ab[X1], ab[Y1]);
var c = Point(cd[X1], cd[Y1]);

var denom = t_ab[X] * -1 * t_cd[Y] - t_ab[Y] * -1 * t_cd[X];
if (denom == 0)
    return noone
    
var num = (c[X] - a[X]) * -1 * t_cd[Y]  - (c[Y] - a[Y]) * -1 * t_cd[X]
var s = num / denom

num = (c[Y] - a[Y]) * t_ab[X] - (c[X] - a[X]) * t_ab[Y]
var t = num / denom

if ((0 <= s and s <= 1) and (0 <= t and t <= 1))
    return Point(a[X] + s * t_ab[X], a[Y] + s * t_ab[Y])
else
    return noone
    


