var mb_left_pressed = mouse_check_button_pressed(mb_left)
var mb_right_pressed = mouse_check_button_pressed(mb_right)

if (mb_left_pressed || mb_right_pressed) {
    game_end()
}
