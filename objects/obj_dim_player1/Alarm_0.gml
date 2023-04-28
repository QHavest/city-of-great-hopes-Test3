/// @description activity

switch (state)
{
	case PLAYERSTATE.LAVKA1 :
	case PLAYERSTATE.LAVKA2 : 
//	case PLAYERSTATE.LAVKA3 : 
	case PLAYERSTATE.LAVKA4 : 
	state =  PLAYERSTATE.ACLAVKA;
	image_index=0;
	break
	case PLAYERSTATE.FREE:
	if (!InRoomMode){
		state = PLAYERSTATE.SMOKE;
	}
	break
}



