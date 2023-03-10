alarm[0] -= 1;

if (alarm[0] < 1){

alarm[0] = random_range(75,80);

hresty = 579;
hrestyy = 991;
switch (phases){
	case 0:
	scr_sect_general();
	break;
	case 1:
	scr_sect_general();
	if (alarm[1] == -1){
	alarm[1] = 70;
	}
	break;
	case 2:
	scr_sect_general();
	if (alarm[2] == -1){
	alarm[2] = 65;
	}
	break;
	case 3:
	alarm[1] = -1;
	alarm[2] = -1;
	break;
}


}
