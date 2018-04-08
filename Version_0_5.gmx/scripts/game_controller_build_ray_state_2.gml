var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)

//////////////////////////////////////////////////////////////////////////
/*
Ray is inifinite sigment. So ray is the segment in which the b point is inifinite
far away....

*/
//////////////////////////////////////////////////////////////////////////

if (cursor_on_game_field) {
    var active_one = OSegment.active_one;
    var s = Vector(mouse_x - active_one.a.x, mouse_y - active_one.a.y) // Ray Direction
    if (vector_length(s) > 0) { 
        var u_s = Vector(s[X] / vector_length(s), s[Y] / vector_length(s)); // Unit direction        
        active_one.b.x = active_one.a.x + INFINITE * u_s[X] 
        active_one.b.y = active_one.a.y + INFINITE * u_s[Y]
    }
}

if (mb_left_pressed && cursor_on_game_field) {
    var active_one = OSegment.active_one;
    //////////////////////////////////////////////////////////////////////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, OSegment.active_one.b)
    if (punto_nearby != noone) {
        var s = Vector(punto_nearby.x - active_one.a.x, punto_nearby.y - active_one.a.y) // Ray go through punto_nearby 
        var u_s = Vector(s[X] / vector_length(s), s[Y] / vector_length(s));
        active_one.b.x = active_one.a.x + INFINITE * u_s[X] 
        active_one.b.y = active_one.a.y + INFINITE * u_s[Y]       
    }
    ///////////////////////////////////////////////////////////////////////////////////
    with (intersection_controller)
        event_user(SEGMENT)
    with (snapshot_controller)
        event_user(MAKE)
    state = game_controller_build_ray_state_1
}
