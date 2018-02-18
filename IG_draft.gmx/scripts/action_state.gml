///action_state()

// Check for action menu
/////////////////////////////////////////////////////////
if (!instance_exists(o_action_menu)) {
    state = think_state
    exit
}
/////////////////////////////////////////////////////////

// Check for zero action menu
if (ds_list_empty(o_action_menu.action_list)) {
    with (o_action_menu) instance_destroy()
    state = think_state
    exit
}

// Check for keyboard input
/////////////////////////////////////////////////////////
var escape_pressed = keyboard_check_pressed(vk_escape)
var action_pressed = keyboard_check_pressed(ord('E')) ||  mouse_check_button_pressed(mb_right)

if (escape_pressed || action_pressed) {
    with (o_action_menu) instance_destroy()
    state = think_state
    exit
}
/////////////////////////////////////////////////////////



// Check for mouse input
/////////////////////////////////////////////////////////
if (mouse_check_button_pressed(mb_left)) {
    with (o_action_menu) instance_destroy()
    state = think_state
    exit
}
/////////////////////////////////////////////////////////
