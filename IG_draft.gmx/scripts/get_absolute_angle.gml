///get_absolute_angle(axis)

var axis = argument0

var absolute_angle = 0

while (axis != noone) {
    absolute_angle += axis.relative_angle
    axis = axis.axis
}

return absolute_angle

