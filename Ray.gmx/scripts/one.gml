var mb_left_pressed = mouse_check_button_pressed(mb_left)

if (mb_left_pressed) {
    ORay.active_one = instance_create(mouse_x, mouse_y, ORay)
    ORay.active_one.a = instance_create(mouse_x, mouse_y, ORay)
    ORay.active_one.b = instance_create(mouse_x, mouse_y, ORay)
    state = two
}
