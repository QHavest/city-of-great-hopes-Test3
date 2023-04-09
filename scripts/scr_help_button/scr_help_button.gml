// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_help_button(){
if (place_meeting(zone_x, zone_y, obj_dim_player1) and obj_dim_player1.status=STATUS.ACTIVE){
	self.visible = true;
} else if (place_meeting(zone_x, zone_y,obj_dim_player2) and obj_dim_player2.status=STATUS.ACTIVE){
	self.visible = true;
} else{ 
	self.visible = false;
	}
}