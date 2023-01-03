alarm[0] -= 1;

if (alarm[0] < 1){
randomize();
alarm[0] = random_range(90,95);
val1 = irandom_range(0,13);

hresty = 577;
hrestyy = 990;

if (val1 = 0){instance_create_depth(615,hresty,-300,obj_helps_sec);}
if (val1 = 1){instance_create_depth(720,hresty,-300,obj_helps_sec);}
if (val1 = 2){instance_create_depth(825,hresty,-300,obj_helps_sec);}
if (val1 = 3){instance_create_depth(930,hresty,-300,obj_helps_sec);}
if (val1 = 4){instance_create_depth(1035,hresty,-300,obj_helps_sec);}
if (val1 = 5){instance_create_depth(1140,hresty,-300,obj_helps_sec);}
if (val1 = 6){instance_create_depth(1245,hresty,-300,obj_helps_sec);}

if (val1 = 7){instance_create_depth(615,hrestyy,-300,obj_helps_sec_horiz);}
if (val1 = 8){instance_create_depth(720,hrestyy,-300,obj_helps_sec_horiz);}
if (val1 = 9){instance_create_depth(825,hrestyy,-300,obj_helps_sec_horiz);}
if (val1 = 10){instance_create_depth(930,hrestyy,-300,obj_helps_sec_horiz);}
if (val1 = 11){instance_create_depth(1035,hrestyy,-300,obj_helps_sec_horiz);}
if (val1 = 12){instance_create_depth(1140,hrestyy,-300,obj_helps_sec_horiz);}
if (val1 = 13){instance_create_depth(1245,hrestyy,-300,obj_helps_sec_horiz);}

}