//scr_turret_ai

if distance_to_object(obj_player) < 1000
{
   instance_create(x+sprite_width/2,y+20,obj_enemy_shot);
}
