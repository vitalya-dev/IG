var mouse_pressed = mouse_check_button_pressed(mb_left)
var cursor_in_game_field = position_meeting(mouse_x, mouse_y, field)

if (mouse_pressed && cursor_in_game_field) {
    global.active_vector = instance_create(mouse_x, mouse_y, OVector);
    state = mouse_controller_build_vector_state_2
}
