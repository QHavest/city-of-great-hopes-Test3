// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@description merge_number
	///@arg num1
	///@arg num2
	///@arg amount
function scr_merge_number( num1,  num2, amount){
	
	
	var diff = num1 - num2;
	var merged = num1 - (diff * amount);
	
	return merged;

}