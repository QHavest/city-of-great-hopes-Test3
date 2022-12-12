hpKrys = 50;
hpYtopyrok = 50;  
global.MaxHp = hpKrys+hpYtopyrok

battle_start = false;
take_damage = false;
amount_hp = 279
damage = 10; //це можна буде видалити
light_bi = 0;

gui_H = display_get_gui_height();
gui_W = display_get_gui_width();
gui_Ws = camera_get_view_width(view_camera[view_current]);
gui_Hs = camera_get_view_height(view_camera[view_current]);

//Інструкція для міні-ігор
/*Довжига хп 279 пікселів = 100% хп.
Відповідно 1хп = 2,79 - довжина, на яку буде зменшуватися полоска, отримуючи пошкодження на 1хп.
Формула дамага = (279/damage)
Формула полоски = amount_hp = amount_hp - (279/damage);


Формула довжини стоїть в draw, все що тобі треба вказувати дамаг під час 
міні-ігор і законектити цей скрипт і міні-гру.




