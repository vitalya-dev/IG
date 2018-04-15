var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (cursor_on_game_field) {
    OSegment.active_one.b.x = mouse_x
    OSegment.active_one.b.y = mouse_y
}

if (mb_left_pressed && cursor_on_game_field) {
    //////////////////////////////////////////////////////////////////////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OSegment.active_one.b)
    if (punto_nearby != noone) {
        instance_destroy(OSegment.active_one.b)
        OSegment.active_one.b = punto_nearby
    }
    //////////////////////////////////////////////////////////////////////////////////
    with (intersection_controller)
        event_user(SEGMENT)
    ///////////////////////////////////////////////////////////////////////////////////
    state = game_controller_build_segment_state_1
}
