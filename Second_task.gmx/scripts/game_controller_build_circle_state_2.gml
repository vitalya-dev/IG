/////////////////////////////////////////////////////////////////////////
var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
var tab_pressed = keyboard_check_pressed(vk_tab)
/////////////////////////////////////////////////////////////////////////

if (cursor_on_game_field && OCircle.active_one != noone) {
        var active_one = OCircle.active_one;
        active_one.r = euclidean_distance(active_one.c.x, active_one.c.y, mouse_x, mouse_y) 
}


if (mb_left_pressed) {
    /////////////////////////////////////////////////////////////////////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OCircle.active_one.c)
    if (punto_nearby != noone) {
        var active_one = OCircle.active_one;
        active_one.r = euclidean_distance(active_one.c.x, active_one.c.y, punto_nearby.x, punto_nearby.y)    
    }
    /////////////////////////////////////////////////////////////////////////////////
    with (intersection_controller)
        event_user(CIRCLE)
    OCircle.active_one = noone
    state = game_controller_build_circle_state_1
}

if (tab_pressed && instance_number(OCircle) > 1) {
    /////////////////////////////////////////////////////
    var active_one = OCircle.active_one;
    active_one.tab_index = 0
    var next_one = instance_find(OCircle, active_one.tab_index);
    active_one.r = next_one.r
    //////////////////////////////////////////////////////
    state = game_controller_build_circle_state_3
}
