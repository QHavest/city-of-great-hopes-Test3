//Світлоооооо

//depth =-10000
//light_surf = surface_create(room_width, room_height);


//---=============================
seconds = 32400;
minutes = 540;
hours = 9;


day = 1;
season = 1;
year = 1;

//time_increment = 50; //секунди за крок

phase1 = phase.daytime;

time_increment = 5;
time_pause = false;

max_darkness = 0.2;
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
	sunset1 = 23,
	nighttime = 24,
	nighttime1 = 5.9,
	nighttime2 = 5,
}