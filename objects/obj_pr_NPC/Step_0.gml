/// @description Insert description here
// You can write your code in this editor

	if (move == 0 ) 

	direct = choose(0,1) 

	// змешення швидкості ходьби по діагоналі
	if( directy !=0 && directx !=0 ) spd=spd*0.8; 

	hsp = directx*spd;
	vsp = directy*walkspd*0.5;
	
	if instance_exists(obj_pauser)
	{
		hsp = 0;
		vsp = 0;
	}
	//горизонтальна колізія
	if(place_meeting(x + hsp, y, obj_invisiblewall)){
		while(!place_meeting(x+sign(hsp), y, obj_invisiblewall))
			x += sign(hsp);
		hsp = 0;
	}

	//вертикальна колізія
	if(place_meeting(x, y + vsp, obj_invisiblewall)){
		while(!place_meeting(x, y + sign(vsp) , obj_invisiblewall))
			y += sign(vsp);
		vsp = 0;
	}

// Inherit the parent event
// анімація руху
event_inherited();


