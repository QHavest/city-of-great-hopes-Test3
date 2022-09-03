seconds = 0;
minutes = 0;
hours = 0;
	

day = 1;
season = 1;
year = 1;

time_increment = 100; //секунди за крок
time_pause = true;

max_darkness = 0.3;
darkness = 0;
light_colour = c_black;
draw_daylight = false;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

//text_id = layer_get_id("Background")
//visability = layer_get_visible(text_id)

//obj1 = object_get_visible(obj_container);
//text_id2 = layer_get_id("Instances_obj")
//visab = layer_get_visible(text_id2)


enum phase {
	sunrise = 6,
	daytime = 12,
	sunset = 20,
	nighttime = 24,
}