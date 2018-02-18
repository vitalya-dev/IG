///view_drag_state()

if (mouse_check_button_pressed(mb_left)) {
    mouse_x_previous = mouse_x
    mouse_y_previous = mouse_y
    start_drag = true  
}

if (mouse_check_button_released(mb_left)) {
    start_drag = false
}

if (start_drag) {
    var delta_x = mouse_x - mouse_x_previous
    var delta_y = mouse_y - mouse_y_previous
    mouse_x_previous = mouse_x
    mouse_y_previous = mouse_y;
    if (abs(delta_x) > 1) {
        view_xview[0] -= delta_x
        mouse_x_previous -= delta_x
    }
    if (abs(delta_y) > 1) {
        view_yview[0] -= delta_y
        mouse_y_previous -= delta_y
    }
}

if (keyboard_check_released(vk_alt)) {
    window_set_cursor(cr_default)
    state = view_normal_state
    start_drag = false
}


