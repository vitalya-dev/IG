var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)

if (mb_left_pressed && cursor_on_game_field) {   
    instance_create(mouse_x, mouse_y, OPunto)
}


if (mb_right_pressed && cursor_on_game_field) {   
    var punto_to_hide = noone
    for (var i = 0; i < instance_number(OPunto); i++) {
        var candidate = instance_find(OPunto, i);
        if (!candidate.visible)
            continue
        var distance_to = euclidean_distance(candidate.x, candidate.y, mouse_x, mouse_y)
        if (distance_to < 10) {
            if (punto_to_hide == noone)
                punto_to_hide = candidate
            else if (euclidean_distance(punto_to_hide.x, punto_to_hide.y, mouse_x, mouse_y) > distance_to)
                punto_to_hide = candidate
        }
    }
    if (punto_to_hide != noone)
        punto_to_hide.visible = false
}

