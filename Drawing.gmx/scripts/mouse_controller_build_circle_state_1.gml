var mouse_in_position = point_in_rectangle(mouse_x, mouse_y, 96, 32, room_width - 10, room_height - 10)
var mouse_clicked = mouse_check_button_pressed(mb_left)
if (mouse_in_position && mouse_clicked) {
    var active_circle = instance_create(mouse_x, mouse_y, o_circle)
    global.active_circle = active_circle
    //-----------------------------------------
    state = mouse_controller_build_circle_state_2
}
