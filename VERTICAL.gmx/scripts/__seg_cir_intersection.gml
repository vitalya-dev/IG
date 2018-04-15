var ab = argument0
var c = argument1

var intersection = Heap(noone, noone)
//////////////////////////////////////
var hexagon = Hexagon(c[X], c[Y], c[R])
for (var i = 0, j = 0; i < 60; i++) {
    var d = __seg_seg_intersection(ab, hexagon[i])
    if (d != noone) {
        intersection[j++] = d
        if (j == 2) // Line and circle can share only 2 points
            break
    }
}
///////////////////////////////////////

return intersection 
