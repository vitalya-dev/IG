if (mouse_check_button_pressed(mb_left)) {
    //############################# Deal with selection ###################################
    //Get pressed objects
    var click = instance_create(mouse_x, mouse_y, o_click)
    var pressed = array_create(0)
    
    var i = 0;
    with (o_interactive) {
        if (collision_func != noone) {
            script_execute(collision_func, click);
            if (global.collision_func_ret == true) {
                pressed[i++] = self
            }
        }
    }
    
    instance_destroy(click);
    //
    
    //Get the one with min depth
    var the_one = noone;
    for (i = 0; i < array_length_1d(pressed); i++) {
        if (the_one == noone)
            the_one = pressed[i]
        else if (pressed[i].depth <= the_one.depth)
            the_one = pressed[i]
    }
    //
    
    // Switch "selected" flag
    if (the_one != noone)
        the_one.selected = !the_one.selected
    //*******************************************************************************   
}    
