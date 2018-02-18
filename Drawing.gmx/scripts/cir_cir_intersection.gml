var circle_1 = argument0;
var circle_2 = argument1;

var intersections = array_create(2);
intersections[0] = noone
intersections[1] = noone
var j = 0;

var hex = hexagon(circle_1[0], circle_1[1], circle_1[2]);
for (var i = 0; i < array_length_1d(hex); i++) {
    var local_intersections = vec_cir_intersection(hex[i], circle_2);
    if (local_intersections[0] != noone && j < 2)
        intersections[j++] = local_intersections[0]
    if (local_intersections[1] != noone && j < 2)
        intersections[j++] = local_intersections[1]
    if ( j >= 2)
        break;   
}

return intersections
