image_index = im;
y += spd;
if (place_meeting(x,y,obj_mini_avatar) and im=1){
instance_destroy();
} 
else if (place_meeting(x,y,obj_mini_avatar) and im=0){
global.MaxHp += 5;
instance_destroy();
}
if (y = 1025){
instance_destroy();
}