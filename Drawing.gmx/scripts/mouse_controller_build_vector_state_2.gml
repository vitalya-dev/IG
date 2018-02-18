var mouse_in_position = point_in_rectangle(mouse_x, mouse_y, 96, 32, room_width - 10, room_height - 10)
var mouse_clicked = mouse_check_button_pressed(mb_left)
if (mouse_in_position && mouse_clicked) {
    show_debug_message("In second state");
    //--------------------------------------------------------
    var active_vector = global.active_vector;
    active_vector.ende = point(mouse_x, mouse_y)
    //---------------------------------------------------------
    global.active_vector = noone;
    state = mouse_controller_build_vector_state_1;
    //---------------------------------------------------------
    for (var i = 0; i < instance_number(o_vector); i++) {
        var other_vector = instance_find(o_vector, i)
        if (active_vector != other_vector) {
            var vector_1 = vector(
                            active_vector.starte[0], active_vector.starte[1], 
                            active_vector.ende[0], active_vector.ende[1]
                            );
            var vector_2 = vector(
                            other_vector.starte[0], other_vector.starte[1],
                            other_vector.ende[0], other_vector.ende[1]
                            );  
            
            var intersection = vec_vec_intersection(vector_1, vector_2)
            if (intersection != noone)
                instance_create(intersection[0], intersection[1], o_punto);
        }
    }
    //-------------------------------------------------------------------
    for (var i = 0; i < instance_number(o_circle); i++) {
        var some_circle = instance_find(o_circle, i);
        
        var vector_1 = vector(
                            active_vector.starte[0], active_vector.starte[1], 
                            active_vector.ende[0], active_vector.ende[1]
                            );
        var circle_1 = circle(some_circle.x, some_circle.y, some_circle.radius) 
        
        var intersection = vec_cir_intersection(vector_1, circle_1)
        for (var j = 0; j < array_length_1d(intersection); j++)
            if (intersection[j] != noone) {
                var punto = intersection[j]
                instance_create(punto[0], punto[1], o_punto);
            }
    }
}
