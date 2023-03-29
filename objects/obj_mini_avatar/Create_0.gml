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
true_hit = false;
index_avatar = 1;

grv = 0.8;
spd = 12;

gui_H = display_get_gui_height();
gui_W = display_get_gui_width();

take_damage = false;
amount_hp_enemy = 96;
	//damage = 0;
	damage_enemy = 0;
light_ambient = false;
damage_timer = 0;
//amount_hp = 279;
//light_bi = 0;
power_hit = 0;
////Гопніки
death_gg = 0;
hsp = 15;
vsp = 15;

