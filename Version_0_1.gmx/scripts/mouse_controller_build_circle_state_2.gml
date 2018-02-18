var mouse_pressed = mouse_check_button_pressed(mb_left)
var cursor_in_game_field = position_meeting(mouse_x, mouse_y, field)
var tab_pressed = keyboard_check_pressed(vk_tab)

if (cursor_in_game_field) {
    var o_circle = global.active_circle;
    o_circle.radius = sqrt(sqr(o_circle.x - mouse_x) + sqr(o_circle.y - mouse_y))
}

if (mouse_pressed) {
    global.active_circle = noone;
    state = mouse_controller_build_circle_state_1
} else if (tab_pressed) {
    state = mouse_controller_build_circle_state_3
}




