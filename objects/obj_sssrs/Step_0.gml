x -= spd;
if (place_meeting(x,y,obj_mini_avatar)){
obj_mini_avatar.damage = 5;}
if (x < 390){
instance_destroy();
}
image_index = im;