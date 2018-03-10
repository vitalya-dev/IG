var mouse_pressed = mouse_check_button_pressed(mb_left)
var cursor_in_game_field = position_meeting(mouse_x, mouse_y, field)

if (mouse_pressed && cursor_in_game_field) {
    global.active_circle = instance_create(mouse_x, mouse_y, OCircle)
    state = mouse_controller_build_circle_state_2
}
