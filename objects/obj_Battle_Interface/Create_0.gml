hpKrys = 50;
hpYtopyrok = 50;  
global.MaxHp = hpKrys+hpYtopyrok

battle_start = false;
take_damage = false;
amount_hp = 279
damage = 10; //це можна буде видалити
light_bi = 0; // мерехтілка вимкнена
mini_game = false; //міні-гра не активна
butt_invis = 1; //видимість кнопок

gui_H = display_get_gui_height();
gui_W = display_get_gui_width();

//for button array

button_c = 1;
j = 0;
system = 0; 
screen = 0;

button[0] = 0;  
button[1] = "L";
button[2] = "D";
button[3] = "D";
button[4] = "D";

//Інструкція для міні-ігор
/*Довжига хп 279 пікселів = 100% хп.
Відповідно 1хп = 2,79 - довжина, на яку буде зменшуватися полоска, отримуючи пошкодження на 1хп.
Формула дамага = (279/damage)
Віднімаємо від хп (візуальної полоски) кількість отриманого дамагу = amount_hp = amount_hp - (279/damage);


Формула довжини стоїть в draw, все що тобі треба вказувати дамаг під час 
міні-ігор і законектити цей скрипт і міні-гру.




