var cx = argument0
var cy = argument1
var r  = argument2

var edges = array_create(60)
///////////////////////////////////////////////////
var vertex = array_create(60)
for (var i = 0, j = 0; i < 360; i += 6)
    vertex[j++] = Point(r * cos(degtorad(i)) + cx, r * sin(degtorad(i)) + cy)

for (var i = 1; i < 60; i++) {
    var a = vertex[i - 1];
    var b = vertex[i];
    edges[i] = Segment(a[X], a[Y], b[X], b[Y])
}

var a = vertex[59];
var b = vertex[0];
edges[0] = Segment(a[X], a[Y], b[X], b[Y])
/////////////////////////////////////////////////

return edges


