//change gravity to 0.01 when in no contact with block
//gravity stuff
if(!place_meeting(x, y+1, obj_wall))
{
    gravity = 0.01;
}
else
{
    gravity = 0;
}
