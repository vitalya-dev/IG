/////////////////////////////////////////////////////////////////////////
var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
/////////////////////////////////////////////////////////////////////////

if (cursor_on_game_field && OPrimitive.active_one != noone) {
        var active_one = OPrimitive.active_one;
        active_one.r = euclidean_distance(active_one.c2.x, active_one.c2.y, mouse_x, mouse_y) 
}


