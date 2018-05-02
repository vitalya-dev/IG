var ab = argument0
var c = argument1

var intersection = Heap(noone, noone)
//////////////////////////////////////
var hexagon = Hexagon(c[X], c[Y], c[R])
for (var i = 0, j = 0; i < 60 && j < 2; i++) {
    var d = __seg_seg_intersection(ab, hexagon[i])
    if (d != noone && !eq(intersection[0], d)) {
        intersection[j++] = d
    }
}
///////////////////////////////////////

return intersection 
