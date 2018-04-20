var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)
////////////////////////////////////////////////////////////////

if (instance_exists(OCircle)) // Reset intermediate values
    OCircle.active_one = noone;

if (mb_left_pressed && cursor_on_game_field) {   
    OCircle.active_one = circle_create(mouse_x, mouse_y);
    with (OCircle.active_one)
        colour = pallete[irandom(array_length_1d(pallete) - 1)]
    ////////////////////////////////////////////////////////////////////////
    
    state = game_controller_build_circle_state_2
} else if (mb_right_pressed) {
    var circle_to_remove = noone;
    for (i = 0; i < instance_number(OCircle); i++) {
        var circle = instance_find(OCircle, i);
        if (euclidean_distance(circle.c.x, circle.c.y, mouse_x, mouse_y) < circle.r) {
            if (circle_to_remove == noone)
                circle_to_remove = circle
            else if (circle_to_remove.r > circle.r)
                 circle_to_remove = circle
        }
    }
    if (circle_to_remove != noone)
        instance_destroy(circle_to_remove)
}



