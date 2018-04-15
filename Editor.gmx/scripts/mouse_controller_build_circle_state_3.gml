var active_circle = global.active_circle;


if (active_circle.tab_index == -1) {
    var o_circle = instance_find(OCircle, 0);
    active_circle.tab_index = 0
    active_circle.radius = o_circle.radius
        
} 


var esc_pressed = keyboard_check_pressed(vk_escape)
var tab_pressed = keyboard_check_pressed(vk_tab);
var left_mouse_pressed = mouse_check_button_pressed(mb_left)
var right_mouse_pressed = mouse_check_button_pressed(mb_right)

if (left_mouse_pressed) {
    active_circle.tab_index = -1
    global.active_circle = noone
    state = mouse_controller_build_circle_state_1
    // Circle is builded. Check intersection
    with (intersection_controller) event_user(CIRCLE);
}

if (right_mouse_pressed) {
    active_circle.tab_index = -1
    state = mouse_controller_build_circle_state_2
}


if (tab_pressed && instance_number(OCircle) > 1) {
    var tab_index = active_circle.tab_index + 1 
    if (tab_index >= instance_number(OCircle) - 1) {
        tab_index = 0
    }
    
    var o_circle = instance_find(OCircle, tab_index);
    active_circle.tab_index = tab_index
    active_circle.radius = o_circle.radius
}






    
    
    
    
    

