//determine image index
if (dir == 1) {
    draw_sprite(spr_enemy_drone,1,x,y)
    draw_sprite(spr_cone,0,x+80,y)
}
else {
    draw_sprite(spr_enemy_drone,0,x,y)
    draw_sprite(spr_cone,1,x-80,y)
}
