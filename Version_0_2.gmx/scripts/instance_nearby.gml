var x1 = argument0
var y1 = argument1
var instance = argument2
var context = argument3

var is_somebody_nearby = noone
with (context) {
    is_somebody_nearby = collision_circle(x1, y1, 20, instance, false, true)
}
return is_somebody_nearby
