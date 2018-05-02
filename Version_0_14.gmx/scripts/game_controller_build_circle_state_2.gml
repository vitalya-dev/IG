/////////////////////////////////////////////////////////////////////////
var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (cursor_on_game_field && OPrimitive.active_one != noone) {
        var active_one = OPrimitive.active_one;
        active_one.r = euclidean_distance(active_one.c.x, active_one.c.y, mouse_x, mouse_y) 
}

if (mb_left_pressed) {
    ////////////snapping//////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OCircle.active_one.c)
    if (punto_nearby != noone) {
        var active_one = OPrimitive.active_one;
        active_one.r = euclidean_distance(active_one.c.x, active_one.c.y, punto_nearby.x, punto_nearby.y)
        active_one.show_guide = false       
        //////////////////////////////////////
        with (intersection_controller)
            event_user(CIRCLE)
        with (snapshot_controller)
            event_user(MAKE)
        ///////////////////////////////////////
        state = game_controller_build_circle_state_1
    }
}

if (mb_right_pressed) {
    instance_destroy(OPrimitive.active_one)
    state = game_controller_build_circle_state_1
}
