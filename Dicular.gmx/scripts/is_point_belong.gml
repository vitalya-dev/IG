if (argument0 == noone || argument1 == noone)
    return false

var c = Point(argument0.x, argument0.y), 
var ab = Segment(argument1.a.x, argument1.a.y, argument1.b.x, argument1.b.y)

var v = Vector(ab[X1] - ab[X2], ab[Y1] - ab[Y2])
var a = Point(ab[X1], ab[Y1])

if (v[X] != 0) {
    var k = (c[X] - a[X]) / v[X]
    return floor(a[Y] + k * v[Y]) == floor(c[Y])
}

if (v[Y] != 0) {
    var k = (c[Y] - a[Y]) / v[Y]
    return floor(a[X] + k * v[X]) == floor(c[X])
}

return false

