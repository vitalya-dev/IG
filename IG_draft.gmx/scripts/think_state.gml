///think_state()

if (o_view.state != view_normal_state)
    exit
/////////////////////////////////////////////////////////
// Check for keyboard input
var escape_pressed = keyboard_check_pressed(vk_escape)
var action_pressed = keyboard_check_pressed(ord('E')) || mouse_check_button_pressed(mb_right)


if (escape_pressed) {
    with (o_selectable) {
        selected = false
    }
}

if (action_pressed && o_view.state == view_normal_state) {
    instance_create(mouse_x, mouse_y, o_action_menu)
    state = action_state
    exit
}
/////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////
// Check for selection
var collided_instance = noone;
if (mouse_check_button_pressed(mb_left)) {
    with (o_selectable) {
        var click = instance_create(mouse_x, mouse_y, o_click)
        script_execute(collision_function, click)
        instance_destroy(click)
        if (global.colided == true) {
            // Select instance with max selection priority
            if (collided_instance == noone) 
                collided_instance = self
            else if (selection_priority > collided_instance.selection_priority) 
                collided_instance = self
            // Reset value of collision function
            global.colided = false 
        }
    }
    if (collided_instance != noone) {
        with (collided_instance) {
            selected = !selected // Switch selected flag
            alarm[FIELD_CHANGED] = 1
        }
    }
}



