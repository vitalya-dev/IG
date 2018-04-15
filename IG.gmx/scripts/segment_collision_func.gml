///segment_collision_func(obj)
var obj = argument0

if (starte == noone || ende == noone)
    global.collision_func_ret = false
else if (collision_line(starte.x, starte.y, ende.x, ende.y, obj, false, true))
    global.collision_func_ret = true
else
    global.collision_func_ret = false

