///question_no_state()
if (text != no_message) {
    text = no_message
    text_index = 0
}
if (text_index < string_length(text)) { 
    text_index += 1
} else {
    if (alarm[2] == -1)
        alarm[2] = room_speed * .5
}
