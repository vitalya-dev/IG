var starte = argument0
var ende = argument1

var instance = instance_create(starte.x, starte.y, __OVector);
instance.starte = starte;
instance.ende = ende;
return instance
