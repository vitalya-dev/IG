///question_no_state()
if (text != yes_message) {
    text = yes_message
    text_index = 0
}
if (text_index < string_length(text)) { 
    text_index += 1
} else {
    if (alarm[3] == -1)
        alarm[3] = room_speed * .5
}
