/////////////////////////////////////////////////////////////////////////
var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

var active_one = OPrimitive.active_one;

if (cursor_on_game_field && OPrimitive.active_one != noone) {
        active_one.r = euclidean_distance(active_one.c2.x, active_one.c2.y, mouse_x, mouse_y) 
}

if (mb_left_pressed && cursor_on_game_field) {
    ////////////snapping//////////////////
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, active_one.c2)
    if (punto_nearby != noone) {
        // Double circle decays on two circles
        var active_one = OPrimitive.active_one;
        active_one.r = euclidean_distance(active_one.c2.x, active_one.c2.y, punto_nearby.x, punto_nearby.y)  
        //////////////////////////////////////
        OPrimitive.active_one = circle_create(active_one.c1);
        OPrimitive.active_one.r = active_one.r
        with (intersection_controller)
            event_user(CIRCLE)
        ////////////////////////////////////// 
        OPrimitive.active_one = circle_create(active_one.c2);
        OPrimitive.active_one.r = active_one.r
        with (intersection_controller)
            event_user(CIRCLE) 
        //////////////////////////////////////
        instance_destroy(active_one)
        //////////////////////////////////////
        with (snapshot_controller)
            event_user(MAKE)
        ///////////////////////////////////////
        state = game_controller_build_dcircle_state_1
    }
}

if (mb_right_pressed) {
    instance_destroy(OPrimitive.active_one)
    state = game_controller_build_dcircle_state_1
}

