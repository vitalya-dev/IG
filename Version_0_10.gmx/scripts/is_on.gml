var c = argument0
var ab = argument1

/*
    Point c lies on segment ab if equation a + k*ab_vector = c have solution
*/

var ab_ = Vector(ab[X2] - ab[X1], ab[Y2] - ab[Y1])
var a = Point(ab[X1], ab[Y1])

if (ab_[X] != 0) {
    var k = (c[X] - a[X]) / ab_[X]
    return floor(a[Y] + k * ab_[Y]) == floor(c[Y]) && (k >= 0 && k <= 1)
}

if (ab_[Y] != 0) {
    var k = (c[Y] - a[Y]) / ab_[Y]
    return floor(a[X] + k * ab_[X]) == floor(c[X]) && (k >= 0 && k <= 1)
}
