pos = scr_rooms_variables(obj_mp_manager.target_rm,2) // район з якого відбувається вхід в мапу
spot=0;
acepted_key = 0;
rah =0;
t=0;

// new varibls
image_speed = 1;
image_index = 0;

// плата за проїзд
feee = 1;

// масштабні коефіцієнти для редагування розміру районів
kof_b = 0.8;
kof_r = 0.8;
kof_c = 0.8;
kof_t = 0.8;
vew_w = 1920;
vew_h = 1080;


// визначення розмірів карт районів
//choice_w = sprite_get_width(spr_choice_circle);
//choice_h = sprite_get_height(spr_choice_circle);


b_w = sprite_get_width(spr_mp_Bazar);
b_h = sprite_get_height(spr_mp_Bazar);
r_w = sprite_get_width(spr_mp_Railway_station);
r_h = sprite_get_height(spr_mp_Railway_station);
c_w = sprite_get_width(spr_mp_Center);
c_h = sprite_get_height(spr_mp_Center);
t_w = sprite_get_width(spr_mp_Tukhlyanka);
t_h = sprite_get_height(spr_mp_Tukhlyanka);


// обчислення відступу від країв камери
bord_x_b = (vew_w - b_w*kof_b)/2 ;
bord_y_b = (vew_h - b_h*kof_b)/2 ;
bord_x_r = (vew_w - r_w*kof_r)/2 ;
bord_y_r = (vew_h - r_h*kof_r)/2 ;
bord_x_c = (vew_w - c_w*kof_c)/2 ;
bord_y_c = (vew_h - c_h*kof_c)/2 ;
bord_x_t = (vew_w - t_w*kof_t)/2 ;
bord_y_t = (vew_h - t_h*kof_t)/2 ;



// перемикання спрайтів через мову
switch (global.LANGUAGE){
case "eng": lang_im=0; 
// спрайт карти (фону кімнати)
layer_set_visible("Back_eng",true);
// спрайт контуру який обводить район
imaga[0] = spr_an_rival_eng;
imaga[1] = spr_an_marker_eng;
imaga[2] = spr_an_centr_eng;
imaga[3] = spr_an_Tyhlia_eng;
break;
case "ua" : lang_im=1; 
layer_set_visible("Back_ua",true);
imaga[0] = spr_an_rival_ua;
imaga[1] = spr_an_marker_ua;
imaga[2] = spr_an_centr_ua;
imaga[3] = spr_an_Tyhlia_ua;
break;
}


// координата контуру який обводить район
pos_x[0] = 435;
pos_y[0] = 1259;
pos_x[1] = 469;
pos_y[1] = 1012;
pos_x[2] = 380;
pos_y[2] = 610;
pos_x[3] = 386;
pos_y[3] = 276;

// при поїздці на таксі (виклик через таксофон)
if obj_mp_manager.taxofon = 1{	
// масив кількості точок для телепортації
spot_num[0]=0; //було значення 1: 2 точки телепортації для вокзалу (0 та 1)
spot_num[1]=2; //було значення 3: 4 точки телепортації для Ринку 
spot_num[2]=0; // 4 точки телепортації для Центру 
spot_num[3]=0; // 4 точки телепортації для Тухлянки

// координати покажчиків телепортації для Вокзалу

//spot_x[0][0] = 632*kof_r + bord_x_r ;
//spot_y[0][0] = 538*kof_r + bord_y_r ;
spot_x[0][0] = 260*kof_r + bord_x_r ;
spot_y[0][0] = 412*kof_r + bord_y_r ;

// кількість позицій показчиків для Вокзалу  -1 
max_spot_n_r = 0

// координати покажчиків телепортації для Базару

spot_x[0][1] = 240*kof_b + bord_x_b ;
spot_y[0][1] = 870*kof_b + bord_y_b ;
spot_x[1][1] = 410*kof_b + bord_x_b ;
spot_y[1][1] = 690*kof_b + bord_y_b ;
//spot_x[2][1] = 380*kof_b + bord_x_b ;
//spot_y[2][1] = 320*kof_b + bord_y_b ;
spot_x[2][1] = 720*kof_b + bord_x_b ;
spot_y[2][1] = 460*kof_b + bord_y_b ;
// кількість позицій показчиків для Базару  -1 
max_spot_n_b = 2

// координати покажчиків телепортації для Центру

spot_x[0][2] = 280*kof_c + bord_x_c ;
spot_y[0][2] = 600*kof_c + bord_y_c ;
//spot_x[1][2] = 511*kof_c + bord_x_c ;
//spot_y[1][2] = 511*kof_c + bord_y_c ;
//spot_x[2][2] = 812*kof_c + bord_x_c ;
//spot_y[2][2] = 520*kof_c + bord_y_c ;
//spot_x[3][2] = 575*kof_c + bord_x_c ;
//spot_y[3][2] = 290*kof_c + bord_y_c ;
// кількість позицій показчиків для центру  -1 
max_spot_n_c = 0

// координати покажчиків телепортації для Тухлянки

spot_x[0][3] = 575*kof_t + bord_x_t ;
spot_y[0][3] = 700*kof_t + bord_y_t ;
//spot_x[1][3] = 300*kof_t + bord_x_t ;
//spot_y[1][3] = 580*kof_t + bord_y_t ;
//spot_x[2][3] = 580*kof_t + bord_x_t ;
//spot_y[2][3] = 450*kof_t + bord_y_t ;
//spot_x[3][3] = 865*kof_t + bord_x_t ;
//spot_y[3][3] = 355*kof_t + bord_y_t ;
// кількість позицій показчиків для Ne[kzyrb  -1 
max_spot_n_t = 0

// кімнати так координати для переміщень

//room_pos[0][0] = rm_street_first_side;
//player_x[0][0] = 1900;
//player_y[0][0] = 275;

room_pos[0][0] = rm_street_second_side;
player_x[0][0] = 3320
player_y[0][0] = 270;


room_pos[0][1] = rm_street_container;
player_x[0][1] = 1080
player_y[0][1] = 270;

room_pos[1][1] = rm_fish_and_bazaar;
player_x[1][1] = 995;
player_y[1][1] = 275;

//room_pos[2][1] = rm_street_magazine_tech_storage;
//player_x[2][1] = 900
//player_y[2][1] = 250;

room_pos[2][1] = rm_home_gg;
player_x[2][1] = 320
player_y[2][1] = 250;


room_pos[0][2] = rm_center_left;
player_x[0][2] = 830;
player_y[0][2] = 245;

//room_pos[1][2] = rm_center;
//player_x[1][2] = 600
//player_y[1][2] = 285;

//room_pos[2][2] = rm_center_right;
//player_x[2][2] = 1100
//player_y[2][2] = 280;

//room_pos[3][2] = rm_police;
//player_x[3][2] = 300
//player_y[3][2] = 280;

room_pos[0][3] = rm_south;
player_x[0][3] = 1180;
player_y[0][3] = 230;

//room_pos[1][3] = rm_sport_centre;
//player_x[1][3] = 470
//player_y[1][3] = 255;

//room_pos[2][3] = rm_north;
//player_x[2][3] = 1050
//player_y[2][3] = 270;

//room_pos[3][3] = rm_school;
//player_x[3][3] = 145;
//player_y[3][3] = 255;

}
else{  // для маршуток
	// кількість позицій показчиків для вибору варіанту переміщення (доступна кількість телепортацій на район)
	max_spot_n_r = 0;
	max_spot_n_c = 0;
	max_spot_n_b = 0;
	max_spot_n_t = 0;
	
	
// при поїздці на маршрутці	
spot_num[0]=0; // 1 точка телепортації для вокзалу 
spot_num[1]=0; // 1 точка телепортації для Ринку
spot_num[2]=-1; // 0 точoк телепортації для Центру 
spot_num[3]=-1; // 0 точок телепортації для Тухлянки


// координати покажчиків телепортації для Вокзалу

spot_x[0][0] = 243*kof_r + bord_x_r ;
spot_y[0][0] = 285*kof_r + bord_y_r ;


// координати покажчиків телепортації для Базару
// гараж ГГ
spot_x[0][1] = 730*kof_b + bord_x_b ;
spot_y[0][1] = 380*kof_b + bord_y_b ;

// координати покажчиків телепортації для Центру

//spot_x[0][2] = 575*kof_c + bord_x_c ;
//spot_y[0][2] = 290*kof_c + bord_y_c ;

// координати покажчиків телепортації для Тухлянки

//spot_x[0][3] = 865*kof_t + bord_x_t ;
//spot_y[0][3] = 355*kof_t + bord_y_t ;

room_pos[0][0] = rm_street_second_side;
player_x[0][0] = 3320
player_y[0][0] = 270;

room_pos[0][1] = rm_home_gg;
player_x[0][1] = 320
player_y[0][1] = 250;

room_pos[0][2] = rm_police;
player_x[0][2] = 300
player_y[0][2] = 280;

room_pos[0][3] = rm_school;
player_x[0][3] = 145;
player_y[0][3] = 255;
}



// позиції камери для слідуванням за контуром
sprite_index = imaga[pos];
x = pos_x[pos];
y = pos_y[pos];
switch (pos) 
{
	case 0: camera_set_view_pos(view_camera[0], x - 200 , 1700); break;
	case 1: camera_set_view_pos(view_camera[0], x - 200 , 1400); break;
	case 2: camera_set_view_pos(view_camera[0], x - 200 , 400); break;
	case 3: camera_set_view_pos(view_camera[0], x - 200 , 0); break;
}
