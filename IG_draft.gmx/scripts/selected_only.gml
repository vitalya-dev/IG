///selected_only(objects...)

var number_of_selected_elements = 0;

with (o_selectable) {
    for (var i = 0; i < argument_count; i++) {
        if (name == argument[i] && !selected) {
            return false
        }
    }
    if (selected) {
        number_of_selected_elements += 1
    }
}
return (number_of_selected_elements == argument_count)
