//hpKrys = 50;
//hpYtopyrok = 50;  
depth = -400;

#region ходьба по клітинкам
G=1//даємо значення сітці G px
G1=1
S=10//встановлення швидкості.

if !place_snapped(G,G1)
{
move_snap(G,G1)
}
Move[1,0]=true
Move[1,1]=true
Move[1,2]=true
Move[1,3]=true
#endregion

index_avatar = 1;

grv = 0.8;
spd = 12;

gui_H = display_get_gui_height();
gui_W = display_get_gui_width();

take_damage = false;

	damage = 5;

amount_hp = 279;
//light_bi = 0;

////Гопніки

hsp = 15;
vsp = 15;

