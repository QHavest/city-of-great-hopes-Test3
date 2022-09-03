// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function versautilsdepthsort(lowerDepthBound, upperDepthBound){
	
	var perceivedDepth = -bbox_bottom;

	if((!variable_global_exists("_entityDepthMin"))
	|| (is_undefined(global._entityDepthMin[room]))
	|| (perceivedDepth < global._entityDepthMin[room]))
	global._entityDepthMin[room] = perceivedDepth * 1.02;
	
	if((!variable_global_exists("_entityDepthMax"))
	|| (is_undefined(global._entityDepthMax[room]))
	|| (perceivedDepth < global._entityDepthMax[room]))
	global._entityDepthMax[room] = perceivedDepth * 0.98;
	
	var normalizedDepth = 1;
	if(global._entityDepthMax[room] > global._entityDepthMin[room])
	{
		normalizedDepth = (perceivedDepth - (global._entityDepthMin[room]));
		normalizedDepth /= (global._entityDepthMax[room] - global._entityDepthMin[room]);
	}
	
	var scaleValue = upperDepthBound - lowerDepthBound;
	var scaledDepth = normalizedDepth * scaleValue + lowerDepthBound;
	
	depth = scaledDepth;
}