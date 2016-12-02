//control drone ai
if (steps > 0 && place_free(x+(move_speed * dir), y+vspeed)) {
    x += move_speed * dir
    steps--
    show_debug_message(string(steps) + " " + string(wait))
}
else steps = 0

if (steps == 0 && wait > 0) {
    wait--
}

if (steps == 0 && wait == 0) {
    dir *= -1
    steps = patrol_dist
    wait = pause_time+irandom(10)
}

if collision_rectangle(x,y+64,x+160,y-64,obj_player,false,false) {
    alert = 100
}
