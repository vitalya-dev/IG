var active_vector = global.active_vector
//-----------------------------------------
var left_mouse_pressed = mouse_check_button_pressed(mb_left)
var right_mouse_pressed = mouse_check_button_pressed(mb_right)
var cursor_in_game_field = position_meeting(mouse_x, mouse_y, field)

if (cursor_in_game_field) {
    active_vector.ende.x = mouse_x
    active_vector.ende.y = mouse_y    
}

if (left_mouse_pressed && cursor_in_game_field) {
    var punto_nearby = noone;
    with (active_vector.ende) { // exclude ende themself from searching another nearby point
        punto_nearby = collision_circle(mouse_x, mouse_y, 20, OPunto, false, true);
    }
    //---------------------------------------------------------------------------------
    if (punto_nearby != noone) {
        // assign and destroy
        instance_destroy(active_vector.ende);
        active_vector.ende = punto_nearby
    }
    global.active_vector = noone
    state = mouse_controller_build_vector_state_1
    //-----------------------------------------------------------------------------------
    with (intersection_controller) event_user(VECTOR);
}

if (right_mouse_pressed) {
    instance_destroy(global.active_vector)
    global.active_vector = noone
    state = mouse_controller_build_vector_state_1
}
