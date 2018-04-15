
var dir_x = mouse_x - ORay.active_one.a.x
var dir_y = mouse_y - ORay.active_one.a.y
var dis = sqrt(sqr(dir_x) + sqr(dir_y))
if (dis > 0) {
    var base_x = dir_x / dis
    var base_y = dir_y / dis  
    ORay.active_one.b.x = ORay.active_one.a.x + 10000 * base_x
    ORay.active_one.b.y = ORay.active_one.a.y + 10000 * base_y 
}

