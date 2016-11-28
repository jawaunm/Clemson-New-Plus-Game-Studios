if(instance_exists(obj_player))
{
    xpos = obj_player.x;
    
    if(xpos>=3800 || xpos<=0)
    {
        if room_next(room) != -1
         {
            room_goto(room_next(room));
         }
         else if room_previous(room) != -1
         {
            room_goto(room_previous(room));
         }
    }

    if (obj_player.lives = 0) {
        room_goto(game_over);  
    }
  
}
 
if(room = game_over && keyboard_check_pressed(vk_enter)) {
   room_goto(title_screen);  
}
 
