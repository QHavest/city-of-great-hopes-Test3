// Script assets have changed for v2.3.0 see
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dim_plyerstate_free(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)
if (move == 0 ) spd = walkspd;
else spd = runspd;

directx = keyr - keyl; 
directy = keyup - keydown;

// змешення швидкості ходьби по діагоналі
if( directy !=0 && directx !=0 ) spd=spd*0.8; 

hsp = directx*spd;
vsp = directy*spd*0.5; 

x += hsp
y -= vsp
if (keyboard_check(ord("1"))) playernum = 0;
if (keyboard_check(ord("2"))) playernum = 1;




sprit="Ytopurok";
 
// зміна анімації
if (playernum == 0) sprit="Ytopurok";
if (playernum == 1) sprit="Krus";

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі
if (y!=yprevious && lastmove==1 ) sprite_index = asset_get_index( "spr_dim_" + sprit +"_move_right");
if (y!=yprevious && lastmove==0 ) sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left");

// зміна анімації руху по горизонталі
if (x>xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right");
 lastmove = 1;}
if (x<xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left");
lastmove = 0;}
if (x==xprevious && y==yprevious) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay");

// відповідність глибини до вертикальної кординати
depth = -y;

// перевірка стану
if (keyattack) state = PLAYERSTATE.ATTACK1

}