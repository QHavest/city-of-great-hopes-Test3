application_surface_draw_enable(false);
//shader
shader = shd_day_and_night;
u_col = shader_get_uniform(shader, "col");


color_mix = -1;
color[0,0] = undefined;
key_previous = -1;
key_next = -1;


scr_add_key_time(010, 070,200); //mid night
scr_add_key_time(250, 235,200); //dawn
scr_add_key_time(250, 240,200); //later after-noon