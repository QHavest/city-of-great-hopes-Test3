// заповнення масиву пасивного плеєра
if (status = STATUS.ACTIVE)
{
	for(var i = array_size-1; i > 0; i--)
	{
		posX[i] = x;
		posY[i] = y;
	}	
}


/*
ще один спосіб зміни ззвуку кроків
audio_stop_sound(s_walk)
if scr_rooms_variables(room,3) s_walk = snd_walk_inside;
else s_walk = snd_walk;
*/




