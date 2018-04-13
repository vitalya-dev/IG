var image = argument0
var duration = argument1

var effect = instance_create(x, y, __ballon_effect);
effect.sprite_index = image
effect.alarm[FINISH] = duration


