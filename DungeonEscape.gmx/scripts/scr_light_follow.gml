size = argument0 //radius of the light
draw_set_blend_mode(bm_subtract);
surface_set_target(light);
draw_ellipse_colour(x-size/2-view_xview,y-size/2-view_yview,x+size/2-view_xview,y+size/2-view_yview,c_orange,c_black,false);
surface_reset_target();
draw_set_blend_mode(bm_normal);
