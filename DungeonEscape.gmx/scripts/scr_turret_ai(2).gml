//scr_turret_ai

//place bullet in front of orb depending on the players location
bulletSpawnXDirection = obj_player.x;
bulletSpawnYDirection = obj_player.y;


if(distance_to_object(obj_player) < 1000)
{
    instance_create(x,(y-75),obj_enemy_shot);
}
