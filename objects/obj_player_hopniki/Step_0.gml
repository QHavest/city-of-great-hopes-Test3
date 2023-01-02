keyr     =  keyboard_check(ord("D"));
keyl     =  keyboard_check(ord("A"));
keyup    =  keyboard_check(ord("W"));
keydown  =  keyboard_check(ord("S"));

	directx = keyr - keyl; 
	directy = keyup - keydown;
	
	hsp = directx*spd;
	vsp = directy*spd;

	x += hsp
	y -= vsp

 alarm[1] -= 1;
 alarm[4] -= 1;
 alarm[0] -= 1;
 
 if(keyboard_check_pressed(ord("V"))){
	 alarm[0] = 100;
 };
 
 
if(global.MaxHp > 0 and place_meeting(x, y, obj_nozh)  and alarm[4] < 1){
	alarm[1] = 30;
	obj_Battle_Interface.light_bi = 1;
	if(global.MaxHp > 51){
	obj_Battle_Interface.hpYtopyrok -= damage;
	global.MaxHp = obj_Battle_Interface.hpKrys+obj_Battle_Interface.hpYtopyrok;
	take_damage = true;
	
	if (alarm[4] < 1){
	amount_hp = amount_hp - (damage/100*279);
	}
	alarm[4]=20;
	}
	else if(global.MaxHp > 0 and global.MaxHp < 51){
	obj_Battle_Interface.hpKrys -= damage;
	global.MaxHp = obj_Battle_Interface.hpKrys+obj_Battle_Interface.hpYtopyrok;
	take_damage = true;
	if (alarm[4] < 1){
	amount_hp = amount_hp - (damage/100*279);
	}
	alarm[4]=20;
	}
	take_damage = false;
} 


if(alarm[1] < 1){
	obj_Battle_Interface.light_bi = 0;
	}


//////////////////////////////////////////////////////////////////////////////////////////

	if(turn = 0){
		instance_create_depth(1512, 611, -300, obj_nozh);
		obj_nozh.x = obj_nozh.x - obj_nozh.spd;	
		image_index = 0;
		if (alarm [0] < 1){turn = 1;}
	}
	
	if(turn = 1){
		instance_create_depth(72, 893, -300, obj_nozh);
		obj_nozh.x = obj_nozh.x + obj_nozh.spd;	
		image_index = 1;
		if (alarm [0] < 1){turn = 2;}
	}




