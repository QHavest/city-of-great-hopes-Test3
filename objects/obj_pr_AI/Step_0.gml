
// рух вправо
if (x>xprevious){
	sprite_index = spr_move_r
	lastmove = 0;
} 

 // рух вліво
if (x<xprevious){ 
		sprite_index = spr_move_l
		lastmove = 1;
}

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі
if (y!=yprevious && lastmove==0 && x==xprevious) 
{
		sprite_index = spr_move_r
}

if (y!=yprevious && lastmove==1 && x==xprevious)
{
	sprite_index = spr_move_l

}

// без руху
if (x==xprevious && y==yprevious && lastmove ==0) sprite_index = spr_move_l
if (x==xprevious && y==yprevious && lastmove ==1) sprite_index = spr_move_r
