var c = argument0
var r = argument1

var hexagon = Hexagon(c[X], c[Y], c[R]);

var intersection = Array(noone, noone)
for (var i = 0, j = 0; i < 60 and j < 2; i++) {
    var k = __vec_cir_intersection(hexagon[i], r)
    if (k[0] != noone) {
        var k_0 = k[0];
        intersection[j++] = k_0;
    }
    if (k[1] != noone) {
        var k_1 = k[1];
        intersection[j++] = k_1;
    }
}

return intersection 
