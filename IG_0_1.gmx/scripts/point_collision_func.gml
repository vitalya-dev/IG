///point_collision_func(obj)
var obj = argument0
if (collision_circle(x, y, POINT_RADIUS, obj, false, true)) {
    global.collision_func_ret = true
} else {
    global.collision_func_ret = false
}


