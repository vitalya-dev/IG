var ab = argument0
var cd = argument1

var ab_vec = Vector(ab[X2] - ab[X1], ab[Y2] - ab[Y1])
var cd_vec = Vector(cd[X2] - cd[X1], cd[Y2] - cd[Y1])

var a = Point(ab[X1], ab[Y1])
var c = Point(cd[X1], cd[Y1])

var denom = ab_vec[X] * -1 * cd_vec[Y] - ab_vec[Y] * -1 * cd_vec[X]
if (denom == 0)
    return noone

var num_1 = (c[X] - a[X]) * -1 * cd_vec[Y] - (c[Y] - a[Y]) * -1 * cd_vec[X]
var s = num_1 / denom

var num_2 = ab_vec[X] * (c[Y] - a[Y]) - ab_vec[Y] * (c[X] - a[X])
var t = num_2 / denom

if ((0 <= s and s <= 1) and (0 <= t and t <= 1))
    return Point(a[X] + s * ab_vec[X], a[Y] + s * ab_vec[Y])
else
    return noone




