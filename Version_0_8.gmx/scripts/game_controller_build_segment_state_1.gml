var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (instance_exists(OSegment))  // Reset intermediate values
    OSegment.active_one = noone

if (mb_left_pressed && cursor_on_game_field) {
    OSegment.active_one = segment_create_1(mouse_x, mouse_y)
    state = game_controller_build_segment_state_2
}
