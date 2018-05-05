stack = argument0

if (ds_list_size(stack) > 0) {
    var val = ds_list_find_value(stack, ds_list_size(stack) - 1)
    ds_list_delete(stack, ds_list_size(stack) - 1)
    return val
} else {
    return noone
}
    

