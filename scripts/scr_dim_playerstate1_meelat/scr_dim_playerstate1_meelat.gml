// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dim_playerstate1_meelat(){

// START ATTACK
if(sprite_index != spr_dim_atack1){
	sprite_index = spr_dim_atack1;
	image_index  = 0;
	ds_list_clear(hitByAttack);
	}
	
// use attack hitbox
mask_index = spr_dim_atack1_mask;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,ob_doc_nub,hitByAttackNow,false);
if (hits > 0 && y > ob_doc_nub.y - 15 && y < ob_doc_nub.y + 15){
	for (var i = 0; i <= hits; i++){
	var hitID = hitByAttackNow[| i];
	  if (ds_list_find_index(hitByAttack, hitID) == -1){
	     ds_list_add(hitByAttack, hitID);
	   //  with (hitID){
			 instance_destroy(ob_doc_nub);
	  //   EnemyHit(2); 
	     // Скрипт дамага (scr_tru_damage)
	     //}
	  }
	}
}

}