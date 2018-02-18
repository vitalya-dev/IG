///quizz_state()

if (o_task_viewer.visible) {
    o_task_viewer.visible = false
}


if (o_view.state != view_normal_state)
    exit
    
/////////////////////////////////////////////////////////
// Check for keyboard input
var escape_pressed = keyboard_check_pressed(vk_escape)


if (escape_pressed) {
    with (o_selectable) {
        selected = false
    }
}
/////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////
// Check for selection
var last_collided_instance = noone;
if (mouse_check_button_pressed(mb_left)) {
    with (o_selectable) {
        var click = instance_create(mouse_x, mouse_y, o_click)
        script_execute(collision_function, click)
        instance_destroy(click)
        if (global.colided == true) {
            // Select instance with max selection priority
            if (last_collided_instance == noone) 
                last_collided_instance = self
            else if (selection_priority > last_collided_instance.selection_priority) 
                last_collided_instance = self
            // Reset value of collision function
            global.colided = false 
        }
    }
    if (last_collided_instance != noone) {
        with (last_collided_instance) {
            selected = !selected // Switch selected flag
            alarm[FIELD_CHANGED] = 1
        }
    }
}
/////////////////////////////////////////////////////////


// Display question
if (instance_number(o_question) > 0) {
    var question = instance_find(o_question, 0)
    if (!question.is_active) {
        question.is_active = true
        question.visible = true
    }
} else {
    state = congratulations_state
}
/////////////////////////////////////////////////////////
