if (tool_build_segment.amount <= 0)
    return 1;

if (!ds_map_exists(states_params, "begin"))
    ds_map_add(states_params, "begin", noone); 

if (keyboard_check_pressed(vk_escape)) {
    var segment = ds_map_find_value(states_params, "begin");
    if (segment != noone) {
        instance_destroy(segment)
        ds_map_replace(states_params, "begin", noone)
    } 
}    
    
if (mouse_check_button_pressed(mb_left)) {
    // Get off from toolbars
    if (position_meeting(mouse_x - 10, mouse_y, o_toolbar))
        return 1;
    if (position_meeting(mouse_x, mouse_y - 10, o_menubar))
        return 1;
    //Get pressed objects
    var click = instance_create(mouse_x, mouse_y, o_click)
    var pressed = array_create(0)
    
    var i = 0;
    with (o_point) {
        if (collision_func != noone) {
            script_execute(collision_func, click);
            if (global.collision_func_ret == true) {
                pressed[i++] = self
            }
        }
    }
    instance_destroy(click);    
    //Get the one with min depth
    var the_one = noone;
    for (i = 0; i < array_length_1d(pressed); i++) {
        if (the_one == noone)
            the_one = pressed[i]
        else if (pressed[i].depth <= the_one.depth)
            the_one = pressed[i]
    }
    //
    
    if (ds_map_find_value(states_params, "begin") == noone) {
        var segment = instance_create(mouse_x, mouse_y, o_segment);
        if (the_one != noone)
            segment.starte = the_one
        ds_map_replace(states_params, "begin", segment)
    } else {
        var segment = ds_map_find_value(states_params, "begin");
        if (the_one != noone)
            segment.ende = the_one
        else 
            segment.ende = instance_create(mouse_x, mouse_y, o_point);
        ds_map_replace(states_params, "begin", noone)
        
        ds_stack_push(o_history.storage, segment);
        tool_build_segment.amount -= 1;
    }
}    
