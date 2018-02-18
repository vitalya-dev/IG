var cx = argument0;
var cy = argument1;
var r = argument2;

var vertex = array_create(60);
var j = 0;

for (var i = 0; i < 360; i += 6) {
    vertex[j++] = point(r * cos(i * pi / 180) + cx, r * sin(i * pi / 180) + cy)        
}

var edges = array_create(array_length_1d(vertex));
for (var i = 1; i < array_length_1d(edges); i++) {
    var a = vertex[i - 1];
    var b = vertex[i];
    edges[i] = vector(a[0], a[1], b[0], b[1]);
}

var a = vertex[i - 1];
var b = vertex[0];
edges[0] = vector(a[0], a[1], b[0], b[1]);

return edges
