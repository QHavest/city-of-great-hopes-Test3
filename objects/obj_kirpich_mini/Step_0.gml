image_index = im;
y += spd;
if (place_meeting(x,y,obj_mini_avatar)){
obj_mini_avatar.damage = 5;
instance_destroy();}
