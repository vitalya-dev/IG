var x1 = argument0
var y1 = argument1
var instance = argument2
var context = argument3

var somebody_nearby = noone
with (context) {
    // Check for somebody in 20 pixel radius
    for (var r = 1; r <= 20; r++) { 
        somebody_nearby = collision_circle(x1, y1, r, instance, false, true)
        if (somebody_nearby)
            break 
    }
}
return somebody_nearby
