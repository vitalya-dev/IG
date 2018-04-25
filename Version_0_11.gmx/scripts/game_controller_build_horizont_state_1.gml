var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (instance_exists(OSegment)) // Reset intermediate values
    OSegment.active_one = noone


if (mb_left_pressed && cursor_on_game_field) {
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, self)   
    if (punto_nearby != noone) {
        OSegment.active_one = segment_create_3(punto_nearby.x, punto_nearby.y);
        OSegment.active_one.a.x = -INFINITE
        OSegment.active_one.b.x = +INFINITE
        ///////////////////////////////////////////////////////////////////////////////////
        with (intersection_controller)
            event_user(SEGMENT)
        with (snapshot_controller)
            event_user(MAKE)
    }
}
