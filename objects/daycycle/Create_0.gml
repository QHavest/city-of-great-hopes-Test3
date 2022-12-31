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

weather = part_system_create();
part_system_depth(weather, -1000);

emitter_rain = 1;
intensivity = 1;
raining = false;
intensivity_var = 1;
rain_or_not_1 = true;

timer_rain = false;
timer_rain_1 = 120; // мінімальний час між запуском дощу


#region fog

randomize();

percent = 10; // шанс туману у відсотках
fog_to_fog = 90 // мінімальний час між занінченям одного туману і запуском іншого в секундах
time1 = 90; // тривалість туману секундах
time_fog = 5; // кожні 5 секунд обчислюється чи буде туман чи ні


num = 10;
time = 30;
fogNum = 0
fog_or_not = true;
fog_exit = false;
room_prev_fog = 1;
room_prev_fog1 = 1;

	fog = part_type_create();
	
	part_type_shape(fog, pt_shape_cloud);
	part_type_alpha3(fog, 0.025, 0.33, 0.025);
	part_type_life(fog, 540, 540);
	part_type_size(fog, 2.3, 3.2, 0, 0);
	part_type_direction(fog, 180, 180, 0, 0);
	part_type_speed(fog, 0.1, 0.25, 0, 0);

alarm[6] = 1;
#endregion