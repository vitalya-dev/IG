var mouse_in_position = point_in_rectangle(mouse_x, mouse_y, 96, 32, room_width - 10, room_height - 10)
var mouse_clicked = mouse_check_button_pressed(mb_left)
if (mouse_in_position && mouse_clicked) {
    show_debug_message("Click click...");
    var active_vector = instance_create(mouse_x, mouse_y, o_vector);
    global.active_vector = active_vector
    state = mouse_controller_build_vector_state_2;
}
