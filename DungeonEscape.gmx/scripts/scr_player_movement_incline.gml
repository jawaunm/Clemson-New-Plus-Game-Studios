// Script: Walking up/down slopes.
// Adapted from script written by Seth Coster of Stoz Studios (www.stozstudios.com)
// Optimized with binary search

var move_speed = argument0

var angle = -90+40*dir;
var step_size = 100;
var optimal_angle_found = false
var optimal_angle = angle + (step_size*dir)

while (step_size > 0 and (abs(angle <= 50) or (angle <= -130 and angle >= -230))){
    groundspotx = ceil(x+lengthdir_x(move_speed,angle))
    groundspoty = ceil(y+lengthdir_y(move_speed,angle))
    if !place_free(groundspotx,groundspoty) {
        angle += step_size*dir;
    }
    else {
        optimal_angle_found = true
        optimal_angle = min(angle,optimal_angle)
        angle -= step_size*dir;
    }
    step_size = floor(step_size/2);
}

if (optimal_angle_found and !place_free(x,y+1)){
    x+=lengthdir_x(move_speed,optimal_angle)
    y+=lengthdir_y(move_speed,optimal_angle)
    move_contact_solid(270,15)
    vspeed = 0
    hspeed = 0
}
