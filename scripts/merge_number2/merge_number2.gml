// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function merge_number2(){
	var num1 = argument0;
	var num2 = argument1;
	var amount = argument2;
	
	var diff = num1 - num2;
	var merged = num1 - (diff * amount);
	
	return merged;

}