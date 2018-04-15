var vec = argument0
var cir = argument1

var hex = hexagon(cir[0], cir[1], cir[2]);

var intersections = array_create(2);
intersections[0] = noone
intersections[1] = noone
var j = 0;

for (var i = 0; i < array_length_1d(hex); i++) {
    var intersection = vec_vec_intersection(hex[i], vec);
    if (intersection != noone)
        intersections[j++] = intersection
}

return intersections
