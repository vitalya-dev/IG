var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (cursor_on_game_field) {
    OPrimitive.active_one.b.x = mouse_x
    OPrimitive.active_one.b.y = mouse_y
}

if (mb_left_pressed && cursor_on_game_field) {
    //////////////////////////////////////////////////////////////////////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OPrimitive.active_one.b)
    if (punto_nearby != noone && punto_nearby != OPrimitive.active_one.a) {
        instance_destroy(OPrimitive.active_one.b)
        OPrimitive.active_one.b = punto_nearby
        //////////////////////////////////////////////////////////////////////////////////
        with (intersection_controller)
            event_user(SEGMENT)
        with (snapshot_controller)
            event_user(MAKE)
        ///////////////////////////////////////////////////////////////////////////////////
        state = game_controller_build_segment_state_1
    }
}

if (mb_right_pressed && cursor_on_game_field) {
    // Destroy the segment and temporary end point
    instance_destroy(OPrimitive.active_one.b);
    instance_destroy(OPrimitive.active_one);
    
    state = game_controller_build_segment_state_1
}
