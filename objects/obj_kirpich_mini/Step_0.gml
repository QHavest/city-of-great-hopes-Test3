image_index = im;
y += spd;
if (place_meeting(x,y-5,obj_mini_avatar)){
//obj_mini_avatar.damage = 5;
instance_destroy();
}
if (y = 1025){
instance_destroy();
}
