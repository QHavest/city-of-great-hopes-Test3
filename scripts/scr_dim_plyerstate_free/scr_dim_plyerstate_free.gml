// Script assets have changed for v2.3.0 see
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dim_plyerstate_free(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)
if (move == 0 ) spd = walkspd;
else spd = runspd;

directx = keyr - keyl; 
directy = keyup - keydown;
//directxy -= directxy - directx ;
// змешення швидкості ходьби по діагоналі
/*if (keyr && place_free(x+ collisionSpeed,y)){
	
}
if (keyl && place_free(x- collisionSpeed,y)){
	
}
if (keyup && place_free(x,y + collisionSpeed)){
	
}
if (keydown && place_free(x,y- collisionSpeed)){
	
}*/
if( directy !=0 && directx !=0 ) spd=spd*0.8; 

hsp = directx*spd;
vsp = directy*spd*0.5;

x += hsp
y -= vsp

if (keyboard_check(ord("1"))) playernum = 0;
if (keyboard_check(ord("2"))) playernum = 1;




sprit="Ytopurok";
 
// зміна анімації
if (playernum == 0) sprit="Ytopurok";
if (playernum == 1) sprit="Krus";

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі

if (y!=yprevious && lastmove==1 ) sprite_index = asset_get_index( "spr_dim_" + sprit +"_move_right");
if (y!=yprevious && lastmove==0 ) sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left");

if (x>xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right");
 lastmove = 1;}
if (keyboard_check(vk_space) and keyr) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_right");runspd =15;}
 
if (x<xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left");
if (keyboard_check(vk_space) and keyl) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_left");runspd = 15;}	
lastmove = 0;}
if (x==xprevious && y==yprevious && lastmove ==1) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
if (x==xprevious && y==yprevious && lastmove ==0) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
// відповідність глибини до вертикальної кординати
//depth = -y;

//горизонтальна колізія
if(place_meeting(x + hsp, y, obj_woi_invisible_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_woi_invisible_wall))
		x += sign(hsp);
	hsp = 0;
}

//вертикальна колізія
if(place_meeting(x, y + vsp, obj_woi_invisible_wall)){
	while(!place_meeting(x, y + sign(vsp) , obj_woi_invisible_wall))
		y += sign(vsp);
	vsp = 0;
}

/*if(place_meeting(x + hsp, y + vsp, obj_woi_invisible_wall)){
	while(!place_meeting(x+sign(hsp), y + sign(vsp) , obj_woi_invisible_wall))
		x += sign(hsp);
		y += sign(vsp);
	hsp = 0;
	vsp = 0;
}*/

// перевірка стану
if (keyattack) state = PLAYERSTATE.ATTACK1

}