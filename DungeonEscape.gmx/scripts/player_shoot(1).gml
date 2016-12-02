//Get values from arguments
//steps between shots (30 steps = 1 shot per second max)
shoot_delay = argument0
//how fast the shots will go
missle_speed = argument1

//if no shoot delay and left mouse pressed, create player bullet going straight
if mouse_check_button_pressed(mb_left) && timer = 0 {
    shot = instance_create(x, y,obj_player_shot)
    shot.hspeed = missle_speed
    timer = shoot_delay
}
//reduce the timer
else if timer > 0 {
    timer--
}
