var ab = argument0
var c = argument1

var intersection = Heap(noone, noone)
//////////////////////////////////////
var hexagon = Hexagon(c[X], c[Y], c[R])
for (var i = 0, j = 0; i < 60; i++) {
    var d = __seg_seg_intersection(ab, hexagon[i])
    if (d != noone && !eq(intersection[0], d) && !eq(intersection[1], d)) {
        intersection[j++] = d
        j = j mod 2 // Max only in two points intersects. So save last ones
    }
}
///////////////////////////////////////

return intersection 
