var insieme = argument0
var val = argument1

if (ds_list_find_index(insieme, val) == -1) {
    ds_list_add(insieme, val)
    return true
}

return false

