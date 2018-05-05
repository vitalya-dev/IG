var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
////////////////////////////////////////////////////////////////

var active_one = OPrimitive.active_one;

if (cursor_on_game_field && OPrimitive.active_one != noone) {
        active_one.r = euclidean_distance(active_one.c1.x, active_one.c1.y, mouse_x, mouse_y) 
}

if (mb_left_pressed && cursor_on_game_field) {
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OPrimitive.active_one.c1)
    if (punto_nearby != noone) {  
        OPrimitive.active_one.c2 = punto_nearby
        state = game_controller_build_dcircle_state_3
    }
}

if (mb_right_pressed) {
    instance_destroy(OPrimitive.active_one)
    state = game_controller_build_dcircle_state_1
}



