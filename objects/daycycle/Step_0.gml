if(keyboard_check_pressed(ord("T"))){time_pause = !time_pause;}
event_inherited()
if(time_pause) exit;
//збільошуємо час за секунду
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

//darkness = hours/24;

if (draw_daylight){
	#region Фази дня
	var darks, colours, pstart, pend;
	
	if (hours > phase.sunrise and hours <= phase.daytime){//Схід
		darks = [max_darkness, 0.2];
		colours = [merge_color(c_black,c_navy, 0.3), c_orange];
		pstart = phase.sunrise;
		pend = phase.daytime;
	}else if (hours > phase.daytime and hours <= phase.sunset){//день
		darks = [0.2, 0, 0, 0, 0.2];
		colours = [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart = phase.daytime;
		pend = phase.sunset;
	}else if (hours > phase.sunset and hours <= phase.nighttime){//захід
		darks = [0.2, max_darkness];
		colours = [c_orange, c_navy, merge_color(c_black,c_navy, 0.3)];
		pstart = phase.sunset;
		pend = phase.nighttime;
	} else {
		darks = [max_darkness];
		colours = [merge_color(c_black,c_navy, 0.3)];
		pstart = phase.nighttime;
		pend = phase.sunrise;
	}
	#endregion
	//-------------------------------
	#region Зміна глубини темного
	//COlours
	if (pstart == phase.nighttime){ light_colour = colours[0];}
	else {
		var cc = ((hours - pstart) / (pend - pstart))*(array_length_1d(colours)-1);
		var c1 = colours[floor(cc)];
		var c2 = colours[ceil(cc)];
	
		light_colour = merge_color(c1, c2, cc-floor(cc));
	}
	//Drakness
	if (pstart == phase.nighttime){ darkness = darks[0];}
	else {
		var dd = ((hours - pstart) / (pend - pstart))*(array_length_1d(darks)-1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = scr_merge_number(d1,d2,dd-floor(dd));
	}
	#endregion
	
}

#region Перевірка циклу
if (hours >= 24){
	seconds = 0;
	day += 1;
	
	if (day > 30) {
		day = 1;
		season += 1;
		
		if (season> 4){
			season = 1;
			year += 1;
		}
	}
}
#endregion


