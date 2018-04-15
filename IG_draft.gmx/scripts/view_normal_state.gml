///view_normal_state()

if (keyboard_check_pressed(vk_alt)) {
    window_set_cursor(cr_drag)
    state = view_drag_state
}
