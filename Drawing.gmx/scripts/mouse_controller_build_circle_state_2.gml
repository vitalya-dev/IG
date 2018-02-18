var mouse_in_position = point_in_rectangle(mouse_x, mouse_y, 96, 32, room_width - 10, room_height - 10)
var mouse_clicked = mouse_check_button_pressed(mb_left)
if (mouse_in_position && mouse_clicked) {
    var active_circle = global.active_circle;
    active_circle.radius = sqrt(sqr(active_circle.x - mouse_x) + sqr(active_circle.y - mouse_y))
    //---------------------------------------------------
    state = mouse_controller_build_circle_state_1
    global.active_circle = noone
    //----------------------------------------------------
    
    var m_circle = circle(active_circle.x, active_circle.y, active_circle.radius);
    //----------------------------------------------------------------------------
    for (var i = 0; i < instance_number(o_vector); i++) {
        var the_vector = instance_find(o_vector, i)
        var m_vector = vector(the_vector.starte[0], the_vector.starte[1], the_vector.ende[0], the_vector.ende[1]);
        var intersections = vec_cir_intersection(m_vector, m_circle)
        if (intersections[0] != noone) {
            var a = intersections[0]
            instance_create(a[0], a[1], o_punto);
        }
        if (intersections[1] != noone) {
            var b = intersections[1]
            instance_create(b[0], b[1], o_punto);
        }
    }
    //---------------------------------------------------------
    for (var i = 0; i < instance_number(o_circle); i++) {
        var the_circle = instance_find(o_circle, i)
        if (the_circle != active_circle) {
            m_circle_2 = circle(the_circle.x, the_circle.y, the_circle.radius)
            var intersections = cir_cir_intersection(m_circle, m_circle_2);
            if (intersections[0] != noone) { //interseciton[a]
                var a = intersections[0]
                instance_create(a[0], a[1], o_punto)
            }
            if (intersections[1] != noone) { // intersection[b]
                var b = intersections[1]
                instance_create(b[0], b[1], o_punto)
            }
        }
    }   
    
    
    
    
    
    
    
    
    
     
}
