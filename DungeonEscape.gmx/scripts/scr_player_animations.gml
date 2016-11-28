if vspeed < 0 {
    sprite_index = spr_player_jump
    image_index = 0
    image_speed = 0
    anim_state = 0
}
else if vspeed > 0 {
    if anim_state = 0 {
        sprite_index = spr_player_jump
        image_index = 0
        image_speed = 1
        anim_state = 1
    }
    else if image_index = 3 {
        image_speed = 0
    }
}
else {
    sprite_index = spr_player
    image_speed = .1
    anim_state = 0
}

image_xscale = dir
