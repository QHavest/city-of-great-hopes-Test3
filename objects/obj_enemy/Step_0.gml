
if(abs(y-obj_ball.y)>4)
	if (y < obj_ball.y)	
		y+= spdd
	else 
	if(y > obj_ball.y)	
		y -= spdd
	
if (spdd < spddaim)	
	spdd+= 0.03
else 
	spdd -= 0.03
	
	