//@arg obj
//@arg x
//@arg y
//@arg relative?
//@arg spd
function cutscene_move_character(argument0,argument1,argument2,argument3,argument4){
var obj = argument0, relative = argument3, spd = argument4;

	
	if(x_dest == -1){
		if(!relative){
			x_dest = argument1;
			y_dest = argument2;
	} else {
		x_dest = obj.x + argument1
		y_dest = obj.y + argument2
		}
	}
	
var xx = x_dest;
var yy = y_dest;
	with(obj){
		sprite_index = spr_dim_Ytopurok_move_right;
			
		if(point_distance(x, y, xx, yy) >= spd){
			var dir = point_direction(x, y, xx, yy);
			var ldirx = lengthdir_x(spd, dir);
			var ldiry = lengthdir_y(spd, dir);
		
			if (ldirx !=0) { image_xscale = sign(ldirx) }
			
			x += ldirx;
			y += ldiry;
		} else {
			sprite_index = spr_dim_Ytopurok_stay_r;
			x = xx;
			y = yy;
			
			with(other){
				x_dest = -1;
				y_dest = -1;
				cutscene_end_action();
			}
		   }
	}
}