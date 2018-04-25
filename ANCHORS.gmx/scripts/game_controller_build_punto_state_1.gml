var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)
var cursor_on_game_field = position_meeting(mouse_x, mouse_y, game_field)

if (mb_left_pressed && cursor_on_game_field) {   
    instance_create(mouse_x, mouse_y, OPunto)
}

if (mb_right_pressed && cursor_on_game_field) {
    var to_hide = noone
    for (var i = 0; i < instance_number(OPunto); i++) {
        var p = instance_find(OPunto, i)
        if (p.visible) {
            var dtp = euclidean_distance(p.x, p.y, mouse_x, mouse_y)
            if (dtp < p.size * 2)
                if (to_hide == noone) 
                    to_hide = p
                else if (euclidean_distance(to_hide.x, to_hide.y, mouse_x, mouse_y) > dtp)
                    to_hide = p  
        }
    }
    if (to_hide != noone)
        to_hide.visible = false
}

