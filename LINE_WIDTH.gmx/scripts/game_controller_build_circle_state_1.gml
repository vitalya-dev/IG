var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
////////////////////////////////////////////////////////////////

if (instance_exists(OCircle)) // Reset intermediate values
    OCircle.active_one = noone;

if (mb_left_pressed && cursor_on_game_field) {   
    OCircle.active_one = circle_create(mouse_x, mouse_y);
    with (OCircle.active_one)
        colour = pallete[irandom(array_length_1d(pallete) - 1)]
    ////////////////////////////////////////////////////////////////////////
    
    state = game_controller_build_circle_state_2
}



