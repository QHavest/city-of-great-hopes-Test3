var text = "";

text_1 = obj_button_switch_language2.grab_localFile_Eng [# 1, 1];

switch(obj_button_switch_language2.languages) {
	case "eng": ini_open("savedata_eng.ini");break;
	case "ukr": ini_open("savedata_ukr.ini");break;
	}
	
text = ini_read_string("menue", "menue_1", "");

ini_close();

/*DrawText = scribble(	text)
					.typewriter_in(0.8,1);
					.wrap(560);
					
					
					draw_something = true;*/