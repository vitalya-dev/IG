var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (instance_exists(OSegment))  // Reset intermediate values
    OPrimitive.active_one = noone

if (mb_left_pressed && cursor_on_game_field) {
    var punto_nearby = instance_nearby(mouse_x, mouse_y, OPunto, self)
    if (punto_nearby) {
        OPrimitive.active_one = segment_create_1(punto_nearby)
        state = game_controller_build_segment_state_2
    }
}
