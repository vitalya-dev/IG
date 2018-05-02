var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
////////////////////////////////////////////////////////////////

if (instance_exists(ODCircle)) { // Reset intermediate values
    OPrimitive.active_one = noone;
}

if (mb_left_pressed && cursor_on_game_field) {
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, self)
    if (punto_nearby != noone) {  
        OPrimitive.active_one = double_circle_create(punto_nearby);
        state = game_controller_build_double_circle_state_2
    }
}


if (mb_right_pressed && cursor_on_game_field) {
    var punto_to_hide = minimal_closest_primitive(OPunto, mouse_x, mouse_y)
    var circle_to_hide = minimal_closest_primitive(OCircle, mouse_x, mouse_y)
   
    if (punto_to_hide != noone) {
        punto_to_hide.visible = false
        with (snapshot_controller)
            event_user(MAKE)
    }
    else if (circle_to_hide != noone) {
        circle_to_hide.visible = false
        with (snapshot_controller)
            event_user(MAKE)
    }
} 



