var c1 = argument0
var c2 = argument1

var intersection = Heap(noone, noone)
/////////////////////////////////////////
var hexagon = Hexagon(c1[X], c1[Y], c1[R])
for (var i = 0, j = 0; i < 60 && j < 2; i++) {
    var d = __seg_cir_intersection(hexagon[i], c2)
    if (d[0] != noone && j < 2)
        if (!eq(intersection[0], d[0]) && !eq(intersection[1], d[0])) {
            intersection[j++] = d[0]
            i += 3 // Skip some. Points cant be to close
        }
}
//////////////////////////////////////////
if (j == 1)
    intersection[0] = noone // Due to computation errors force circle have 0 or 2 common points    

return intersection

