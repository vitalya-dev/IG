var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

var active_one = OSegment.active_one;

if (cursor_on_game_field) {
    var c = Vector(mouse_x - active_one.a.x, mouse_y - active_one.a.y);
    if (normal_2(c) != noone) {
        var u_c = Vector(c[X] / normal_2(c), c[Y] / normal_2(c));
        OSegment.active_one.b.x = OSegment.active_one.a.x + INFINITE * u_c[X]
        OSegment.active_one.b.y = OSegment.active_one.a.y + INFINITE * u_c[Y]
    }
}

if (mb_left_pressed && cursor_on_game_field) {
    //////////////////////////////////////////////////////////////////////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OSegment.active_one.b)
    if (punto_nearby != noone) {
        // Ray go through punto_nearby
        var c = Vector(punto_nearby.x - active_one.a.x, punto_nearby.y - active_one.a.y);
        if (normal_2(c) != noone) {
            var u_c = Vector(c[X] / normal_2(c), c[Y] / normal_2(c));
            OSegment.active_one.b.x = OSegment.active_one.a.x + INFINITE * u_c[X]
            OSegment.active_one.b.y = OSegment.active_one.a.y + INFINITE * u_c[Y]
        }
    }
    ///////////////////////////////////////////////////////////////////////////////////
    with (intersection_controller)
        event_user(SEGMENT)
    ///////////////////////////////////////////////////////////////////////////////////
    state = game_controller_build_ray_state_1  
}

