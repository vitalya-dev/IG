var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)

if (mb_left_pressed && cursor_on_game_field) {   
    OCircle.active_one = circle_create(mouse_x, mouse_y);
    state = game_controller_build_circle_state_2
}

