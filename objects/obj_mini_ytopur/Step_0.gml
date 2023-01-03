instance_create_depth(941.5,887,-300,obj_grusha_sml_up);
alarm[0] += 1;
if (alarm[0] > 100){
obj_grusha_sml_up.idx = 1;
hits_grusha = true;

if(alarm[0] > 300){
	obj_grusha_sml_up.idx = 0;
	alarm[0] = 0
	hits_grusha = false;
	}
}



