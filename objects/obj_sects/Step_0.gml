alarm[0] -= 1;

if (alarm[0] < 1){

alarm[0] = random_range(100,120);

hresty = 579;
hrestyy = 991;
if (phases == 0){
	/*var object_hrest_r = irandom_range(0,1);
	var object_hrest = 0;
	
	switch(object_hrest_r){
	case 0:
	object_hrest = obj_helps_sec;
	break;
	case 1:
	object_hrest = obj_helps_sec_horiz;
	break;
	}*/
scr_sect_general();
}

if (phases == 1){
scr_sect_general();
scr_sect_general2();
}

if (phases == 2){
scr_sect_general();
scr_sect_general2();
scr_sect_general3();
}

}
