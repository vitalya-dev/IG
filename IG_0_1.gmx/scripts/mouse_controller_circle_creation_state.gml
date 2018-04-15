///mouse_controller_circle_creation_state

if (!ds_map_exists(states_params, "circle begin")) 
    ds_map_add(states_params, "circle begin", noone);    

if (mouse_check_button_pressed(mb_left)) {
    if (ds_map_find_value(states_params, "circle begin") == noone) {
        var circle = instance_create(mouse_x, mouse_y, o_circle);
        circle.interactive = true
        ds_map_replace(states_params, "circle begin", circle);
    } else {
        var circle = ds_map_find_value(states_params, "circle begin");
        circle.interactive = false
        ds_map_replace(states_params, "circle begin", noone)
    }
}
