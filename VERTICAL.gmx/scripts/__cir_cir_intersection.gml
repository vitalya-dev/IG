var c1 = argument0
var c2 = argument1

var intersection = Heap(noone, noone)
/////////////////////////////////////////
var hexagon = Hexagon(c1[X], c1[Y], c1[R])
for (var i = 0, j = 0; i < 60; i++) {
    var d = __seg_cir_intersection(hexagon[i], c2)
    if (d[0] != noone && j < 2)
        intersection[j++] = d[0]
    if (d[1] != noone && j < 2)
        intersection[j++] = d[0]
    if (j == 2)
        break
}
//////////////////////////////////////////

return intersection

