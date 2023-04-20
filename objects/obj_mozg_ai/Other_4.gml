/// @description Insert description here
// You can write your code in this editor
switch(room){
case rm_home_gg:
	if (bachuv_kavovy_baby)	 {instance_destroy(obj_kavova_babka);}
	if (bachuvkyriagy)		 {instance_destroy(obj_smoking);}
break

case rm_south:
if (bach_mamy) {instance_destroy(obj_mama_2);}
break

case rm_street_container:
if (bach_ssuklo_ssut) {instance_destroy(obj_bomz_ssuklo);}
break

}