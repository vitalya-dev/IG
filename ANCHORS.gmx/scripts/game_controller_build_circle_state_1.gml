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
    if (to_hide != noone) {
        to_hide.visible = false
        with (snapshot_controller) event_user(MAKE)
        return 0
    }


    var circle_to_hide = noone;
    for (var i = 0; i < instance_number(OCircle); i++) {
        var candidate = instance_find(OCircle, i)
        if (candidate.visible && euclidean_distance(candidate.x, candidate.y, mouse_x, mouse_y) < candidate.r) {  
            if (circle_to_hide == noone)
                circle_to_hide = candidate;
            else if (candidate.r <= circle_to_hide.r)
                circle_to_hide = candidate
        }
    }
    if (circle_to_hide != noone) {
        circle_to_hide.visible = false
        with (snapshot_controller) event_user(MAKE)
    }
} 



