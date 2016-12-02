/*
//0 causes no cycling, 1 will cycle one image per step, use decimal to go slower


//if there is a floor below you, then you are on the ground and your velocity is 0
if(place_meeting(x, y+1, obj_floor))
{
    onGround = 1;
}
else
{
    onGround = 0;
}

//if we're not on the ground
if(onGround == 0)
{
    //apply gravity
    velY += grav;
}

//move left if 'a'
if(keyboard_check(ord('A')))
{
    
    if (onGround == 1) {
    sprite_index = spr_player;
    image_speed = .2;
    }
    velX = -player_speed;
    //changes sprite direction to the original given by sprite
    image_xscale = -1;
    
    //lets animation run while moving
    image_speed = .1;
}

//move right if 'd' 
else if(keyboard_check(ord('D')))
{
    if (onGround == 1) {
    sprite_index = spr_player;
    image_speed = .2;
    }
    velX = player_speed;
    //changes sprite direction to the opposite given by sprite
    image_xscale = 1;
    
    //lets animation run while moving
    image_speed = .1;
}
else
{
    //zero the x velocity, add friction later
    velX = 0;
}

//jump when pressing space
if (keyboard_check_pressed(vk_space))
{

    //if you are on the floor
    if(onGround == 1)
    {  
            
            sprite_index = spr_player_jump;
            image_speed = 0;
            image_index = 0;

        //apply the jump speed to the y velocity
        velY = jump_height;
    }
}
//when releasing space, lets the player fall immediately
else if(keyboard_check_released(vk_space))
{
       sprite_index = spr_player_jump;
       image_speed = 0;
       image_index = 3;
       
    if(velY < jump_thresh)
    {
       sprite_index = spr_player_jump;
       image_speed = 0;
       image_index = 3;
        velY = jump_thresh;
    }
}

//for idle animation
if(velX == 0 && onGround!= 0 && velY == 0) {
    sprite_index = spr_player_stand;
    image_speed = .2;

}

//check hor and vert collisions
//horizontal collision
if(place_meeting(x+velX, y, obj_floor))
{
 
    while(!place_meeting(x, y, obj_floor))
    {
        x+= sign(velX);
    }
    velX = 0;
}

//vertical collision
//if(place_meeting(x+sign(velX), y+velY, obj_floor))
if(place_meeting(x+sign(velX), y+velY, obj_floor))
{
     while(!place_meeting(x, y+sign(velY), obj_floor))
    {
        y += sign(velY);
    }
    velY = 0;
}

//vertical movement
y += velY;
x += velX;
*/
