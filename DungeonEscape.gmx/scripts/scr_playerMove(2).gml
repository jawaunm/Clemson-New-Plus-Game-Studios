//get speeds from script arguments
jump_speed = argument0
move_speed = argument1
grav_speed = argument2

//bounce determines whether player glides smoothly up ramps or bounces up them (true = bounce, false = smooth)
bounce = argument3
//double jump determines if the player has the ability to double jump (true = can double jump)
double_jump = argument4

//manage up key press event
if keyboard_check_pressed(ord(key_playerUp)) {
    //if player is resting on a solid object, do a normal jump
    if !place_free(x,y+1) {
        vspeed = -jump_speed
    }
    //if player can double jump, 
    else if (second_jump = true and double_jump) {
        if vspeed > 0
            vspeed = -jump_speed
        else
            vspeed -= jump_speed/2
        second_jump = false
    }
}

//vectical collisions
if !place_free(x,y+1) {
    //prevent downward movement while on the ground
    if vspeed > 0 {
        vspeed = 0
    }
}
//apply gravity if in the air and destination is not colliding with a solid object
else if place_free(x,y+vspeed+grav_speed) {
    if vspeed < 10 {
        vspeed += grav_speed
    }
}
//if destination has a collisition, move to contact and set the verticle speed to 0
else if vspeed > 0 {
    move_contact_solid(270, 0)
    vspeed = 0
    //made contact with the floor, so restore second jump
    second_jump = true
}
else if vspeed < 0 {
    move_contact_solid(90, 0)
    vspeed = 0
}


//manage left and right key events
if keyboard_check(ord(key_playerLeft)) {
    //if destination is free of collisions, move left
    if place_free(x-move_speed, y+vspeed) {
        x -= move_speed
    }
    //if the left has a ramp, move player left and up
    else if place_meeting(x-move_speed, y+vspeed,obj_upper_right_corner) || place_meeting(x,y+1,obj_upper_right_corner) {
        x -= move_speed
        if bounce
            vspeed -= move_speed
        else
            y -= move_speed;
    }
}
if keyboard_check(ord(key_playerRight)) {
    //if destination is free of collisions move right
    if place_free(x+move_speed, y+vspeed) {
        x += move_speed
    }
    //if the right has a ramp, move player right and up
    else if place_meeting(x+move_speed, y+vspeed,obj_upper_left_corner){
        x += move_speed
        if bounce
            vspeed -= move_speed
        else
            y -= move_speed;
    }
}

