hpKrys = 50;
hpYtopyrok = 50;  
global.MaxHp = hpKrys+hpYtopyrok

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
#endregion

index_avatar = 1;

grv = 0.8;
spd = 5;

gui_H = display_get_gui_height();
gui_W = display_get_gui_width();

take_damage = false;
damage = damage;
amount_hp = 279;
light_bi = 0;