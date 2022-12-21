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

//text_torchky = "Натисніть “W” або “Стрілочка вгору”, щоб почати бійку. Ухиляйтеся від шприців за допомогою відштовхування в повітрі на кнопку “W” або “Стрілочка вгору”."
text_torchky = "Press “W” or “Up Arrow” to start a fight. Dodge syringes by pushing in the air on the “W” or “Up Arrow” button."
stringHeight = string_height(text_torchky);






