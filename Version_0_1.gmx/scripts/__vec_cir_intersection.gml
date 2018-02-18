/// Intersection of ab vector with circle c
var ab = argument0
var c = argument1

var hexagon = Hexagon(c[X], c[Y], c[R])

// Vector intersect circle in 0 or in 1 or in 2 points
var intersection = Array(noone, noone)
var j = 0;

for (var i = 0; i < 60 and j < 2; i++) {
    var k = __vec_vec_intersection(ab, hexagon[i])
    if (k != noone)
        intersection[j++] = k        
}

return intersection





