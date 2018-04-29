stack = argument0
val = argument1

for (var i = 0; i < ds_list_size(stack); i++) {
    var j = ds_list_find_value(stack, i)
    if (j == val)
        return true
}

return false
