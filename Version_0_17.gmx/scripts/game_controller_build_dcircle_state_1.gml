var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
////////////////////////////////////////////////////////////////

if (instance_exists(OPrimitive)) { // Reset intermediate values
    OPrimitive.active_one = noone;
}

if (mb_left_pressed && cursor_on_game_field) {
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, self)
    if (punto_nearby != noone) {  
        OPrimitive.active_one = dcircle_create(punto_nearby) 
        state = game_controller_build_dcircle_state_2
    }
}


