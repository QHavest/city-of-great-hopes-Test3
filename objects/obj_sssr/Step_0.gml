
alarm[0] -= 1;
//alarm[1] -= 1;
if (alarm[0] < 1){
alarm[0] = 30;
var val = irandom_range(0,3);
var strax = 1570;

switch (phases){
	
case 0:
randomize();
var randomisers = irandom_range(0,3);
switch(randomisers){
	case 0 :
	randomisers = 578;
	break;
	case 1 :
	randomisers = 682;
	break;
	case 2 :
	randomisers = 789;
	break;
	case 3 :
	randomisers = 894;
	break;
	}

switch(val){
	case 0 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs)
	break;
	}
break;

case 1:
if (alarm[5] == -1) {
   alarm[5] = 25; // Запускаємо Alarm через 60 кадрів
}
randomize();
var randomisers = irandom_range(0,3);
switch(randomisers){
	case 0 :
	randomisers = 578;
	break;
	case 1 :
	randomisers = 682;
	break;
	case 2 :
	randomisers = 789;
	break;
	case 3 :
	randomisers = 894;
	break;
	}
	
switch(val){
	case 0 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs)
	break;
	}
break;
case 2:

if (alarm[6] == -1) {
   alarm[6] = 20; // Запускаємо Alarm через 60 кадрів
}
randomize();
var randomisers = irandom_range(0,3);
switch(randomisers){
	case 0 :
	randomisers = 578;
	break;
	case 1 :
	randomisers = 682;
	break;
	case 2 :
	randomisers = 789;
	break;
	case 3 :
	randomisers = 894;
	break;
	}
	
switch(val){
	case 0 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs)
	break;
	}
break;

case 3:
	alarm[5] = -1; 
	alarm[6] = -1; 
break;
}

/*if (phases = 0){
randomisers = irandom_range(0,3);
switch(randomisers){
	case 0 :
	randomisers = 578;
	break;
	case 1 :
	randomisers = 682;
	break;
	case 2 :
	randomisers = 789;
	break;
	case 3 :
	randomisers = 894;
	break;
}
switch(val){
	case 0 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs)
	break;
	}
}

if (phases = 1){
randomisers = irandom_range(0,1);
switch(randomisers){
	case 0 :
	randomisers = 578;
	break;
	case 1 :
	randomisers = 682;
	break;

}
randomisers1 = irandom_range(0,1);
	switch(randomisers1){
	case 0 :
	randomisers1 = 789;
	break;
	case 1 :
	randomisers1 = 894;
	break;
}

switch(val){
	case 0 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	 instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	 instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	break;
	}

	
	
}


if (phases = 2){
randomisers = 0;
switch(randomisers){
	case 0 :
	randomisers = 578;
	break;
}
randomisers1 = 1;
	switch(randomisers1){
	case 1 :
	randomisers1 = 894;
	break;
}

randomisers2 = irandom_range(0,1);
	switch(randomisers2){
	case 0 :
	randomisers2 = 789;
	break;
	case 1 :
	randomisers2 = 682;
	break;
}
switch(val){
	case 0 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	instance_create_depth(strax,randomisers2,-300,obj_sssrs);
	break;
	case 1 :
	instance_create_depth(strax,randomisers,-300,obj_sssrs);
	instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	instance_create_depth(strax,randomisers2,-300,obj_sssrs);
	break;
	case 2 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	 instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	 instance_create_depth(strax,randomisers2,-300,obj_sssrs);
	break;
	case 3 :
	 instance_create_depth(strax,randomisers,-300,obj_sssrs);
	 instance_create_depth(strax,randomisers1,-300,obj_sssrs);
	 instance_create_depth(strax,randomisers2,-300,obj_sssrs);
	break;
	}	
}*/
//instance_create_depth(strax,578,-300,obj_star)
/*
sssr_enemy = ds_list_create();
ds_list_shuffle(sssr_enemy);

if (val = 0 or val = irandom_range(0,3)){ds_list_add(sssr_enemy, instance_create_depth(strax,578,-300,obj_sssrs));}
if (val = 1 or val = irandom_range(0,3)){ds_list_add(sssr_enemy, instance_create_depth(strax,682,-300,obj_sssrs));}
if (val = 2 or val = irandom_range(0,3)){ds_list_add(sssr_enemy, instance_create_depth(strax,789,-300,obj_sssrs));}
if (val = 3 or val = irandom_range(0,2)){ds_list_add(sssr_enemy, instance_create_depth(strax,894,-300,obj_sssrs));}
with (ds_list_find_value(sssr_enemy, irandom_range(0,3))){
	im = irandom_range(0,3);
}*/
}


