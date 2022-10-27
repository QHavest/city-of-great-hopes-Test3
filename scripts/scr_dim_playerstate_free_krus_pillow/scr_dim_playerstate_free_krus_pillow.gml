	function scr_dim_playerstate_free_krus_pillow(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)
//if(status = STATUS.ACTIVE){
	if (moves == 0 ) spds = walkspds;
	else spds = runspds;

	directxs= keyrs - keyls; 
	directys = keyups - keydowns;
	//directxy -= directxy - directx ;
	// змешення швидкості ходьби по діагоналі
	if( directys !=0 && directxs !=0 ) spds=spds*0.8; 

	hsps = directxs*spds;
	vsps = directys*spds*0.5;
	/*if instance_exists(obj_pauser){
		hsps = 0;
		vsps = 0;
	}*/
	x += hsps
	y -= vsps

	//горизонтальна колізія
	if(place_meeting(x + hsps, y, obj_invisiblewall)){
		while(!place_meeting(x+sign(hsps), y, obj_invisiblewall))
			x += sign(hsps);
		hsps = 0;
	}

	//вертикальна колізія
	if(place_meeting(x, y + vsps, obj_invisiblewall)){
		while(!place_meeting(x, y + sign(vsps) , obj_invisiblewall))
			y += sign(vsps);
		vsps = 0;
	}

	//}
sprits="Krus";

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі

if (y!=yprevious && lastmoves==0 ) sprite_index = asset_get_index( "spr_dim_" + sprits +"_move_right_pillow");
//if (y!=yprevious && lastmove==1 ) sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left");

if (x>xprevious){ sprite_index = asset_get_index("spr_dim_" + sprits +"_move_right_pillow");
 lastmoves = 0;}
//if (keyboard_check(vk_space) and keyr) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_right");runspd =8;}
 
//if (x<xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left");
//if (keyboard_check(vk_space) and keyl) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_left");runspd = 8;}	
//lastmove = 1;}
if (x==xprevious && y==yprevious && lastmoves ==0) sprite_index = asset_get_index("spr_dim_" + sprits + "_cut_idle");
//if (x==xprevious && y==yprevious && lastmove ==1) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
// відповідність глибини до вертикальної кординати
//depth = -y;
// відповідність глибини до вертикальної кординати
//depth = -y;
}