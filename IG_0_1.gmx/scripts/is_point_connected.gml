with (o_segment) {
    if (self.starte != noone && self.ende != noone) {
        if (self.starte.name == argument0 && self.ende.name == argument1)
            return true
        if (self.ende.name == argument0 && self.starte.name == argument1)
            return true
    }
}

return false
        
