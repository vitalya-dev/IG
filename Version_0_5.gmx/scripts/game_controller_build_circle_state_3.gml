/////////////////////////////////////////////////////////////////////////
var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
var tab_pressed = keyboard_check_pressed(vk_tab)
/////////////////////////////////////////////////////////////////////////


if (tab_pressed && instance_number(OCircle) > 1) {
    var active_one = OCircle.active_one;
    /////////////////////////////////////////////////////  
    active_one.tab_index += 1
    if (active_one.tab_index >= instance_number(OCircle) - 1) // Skip last one. Because last one is active one.
        active_one.tab_index = 0
    ////////////////////////////////////////////////////
    var next_one = instance_find(OCircle, active_one.tab_index);
    active_one.r = next_one.r
}


if (mb_left_pressed) {
    ////////////////////////////////////////
    with (intersection_controller)
        event_user(CIRCLE)
    with (snapshot_controller)
        event_user(MAKE)
    ////////////////////////////////////////
    OCircle.active_one = noone
    state = game_controller_build_circle_state_1
}
