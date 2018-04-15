///__angle_create_first_quadrant(value, axis, point)

var value = argument0
var axis = argument1
var point = argument2


var new_segment = instance_create(point.x, point.y, o_segment);
new_segment.starte = point

if (point == axis.starte)
    new_segment.angle = axis.angle - value
else if (point == axis.ende)
    new_segment.angle = 180 + axis.angle + value    

