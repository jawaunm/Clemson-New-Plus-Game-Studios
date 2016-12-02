//Get values from arguments
//steps between shots (30 steps = 1 shot per second max)
shoot_delay = argument0
//how fast the shots will go
missle_speed = argument1

//create player bullet going towards click location
if mouse_check_button_pressed(mb_left) && timer = 0 {
    shot = instance_create(x, y,obj_player_shot)
    with(shot) {
        move_towards_point(mouse_x, mouse_y, 3)
        image_angle = direction
    }
    timer = shoot_delay
}
//reduce timer
else if timer > 0 {
    timer--
}
