var mb_left_pressed = mouse_check_button_pressed(mb_left)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
////////////////////////////////////////////////////////////////

if (instance_exists(OCircle)) // Reset intermediate values
    OCircle.active_one = noone;
var colors = Heap(c_red, c_blue, c_yellow, c_aqua)
if (mb_left_pressed && cursor_on_game_field) {   
    OCircle.active_one = circle_create(mouse_x, mouse_y);
    if (instance_number(OCircle) > 1) {
        var previous = instance_find(OCircle, instance_number(OCircle) - 2);
        OCircle.active_one.colour = colors[irandom(3)]
    }
    state = game_controller_build_circle_state_2
}

