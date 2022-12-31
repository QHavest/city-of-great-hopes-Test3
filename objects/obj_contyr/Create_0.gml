/*switch (obj_mp_manager.target_rm){
case rm_bakery :				pos = 0; break
case rm_food_shop :				pos = 0; break
case rm_indoor_rival_station :	pos = 0; break
case rm_street_first_side :		pos = 0; break
case rm_street_second_side :	pos = 0; break
case rm_tri_kalynky :			pos = 0; break
case rm_tri_kalynky_boss :		pos = 0; break
case rm_fishing :						pos = 1; break
case rm_zoomagazine :					pos = 1; break
case rm_okorochok_indoor :				pos = 1; break
case rm_storage :						pos = 1; break
case rm_tech :							pos = 1; break
case rm_fish_and_bazaar :				pos = 1; break
case rm_street_container :				pos = 1; break
case rm_street_magazine_tech_storage :	pos = 1; break
case rm_garage_gg :						pos = 1; break
case rm_home_gg :						pos = 1; break
case rm_home_gg_inside :				pos = 1; break
case rm_home_gg_inside_kitchen :		pos = 1; break
case rm_cinema_inside :			pos = 2; break
case rm_cinema_l :				pos = 2; break
case rm_cinema_r :				pos = 2; break
case rm_hotel_inside :			pos = 2; break
case rm_hotel_rooms :			pos = 2; break
case rm_kitchen :				pos = 2; break
case rm_restraunt :				pos = 2; break
case rm_room22 :				pos = 2; break
case rm_police :				pos = 2; break
case rm_police_inside :			pos = 2; break
case rm_police_inside_boss :	pos = 2; break
case rm_culture_hall_l :		pos = 2; break
case rm_culture_hall_r :		pos = 2; break
case rm_culture_inside :		pos = 2; break
case rm_fasfood :				pos = 2; break
case rm_center :				pos = 2; break
case rm_center_left :			pos = 2; break
case rm_center_right :			pos = 2; break
case rm_home_manda :	pos = 3; break
case rm_home_entrance :	pos = 3; break
case rm_ieghova_inside :pos = 3; break
case rm_south :			pos = 3; break
case rm_box_inside :	pos = 3; break
case rm_sport_centre :	pos = 3; break
case rm_sport_inside :	pos = 3; break
case rm_bibliotheka :	pos = 3; break
case rm_hastronom_tukh :pos = 3; break
case rm_north :			pos = 3; break
case rm_school :		pos = 3; break
}*/
pos = scr_rooms_variables(obj_mp_manager.target_rm,2)
spot=0;
acepted_key = 0;
t=0;

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

// спрайт контуру який обводить район
imaga[0] = spr_contyr_1;
imaga[1] = spr_contyr_2;
imaga[2] = spr_contyr_3;
imaga[3] = spr_contyr_4;

// координата контуру який обводить район
pos_x[0] = 1074;
pos_y[0] = 2883;
pos_x[1] = 1070;
pos_y[1] = 2215;
pos_x[2] = 950;
pos_y[2] = 1344;
pos_x[3] = 910;
pos_y[3] = 665;

if obj_mp_manager.taxofon = 1{
	
	// при поїздці на таксі (виклик через таксофон)
// масив кількості точок для телепортації
spot_num[0]=1; // 2 точки телепортації для вокзалу (0 та 1)
spot_num[1]=3; // 4 точки телепортації для Ринку
spot_num[2]=3; // 4 точки телепортації для Центру 
spot_num[3]=3; // 4 точки телепортації для Тухлянки

// координати покажчиків телепортації для Вокзалу

spot_x[0][0] = 632*kof_r + bord_x_r ;
spot_y[0][0] = 538*kof_r + bord_y_r ;
spot_x[1][0] = 243*kof_r + bord_x_r ;
spot_y[1][0] = 285*kof_r + bord_y_r ;

// кількість позицій показчиків для Вокзалу  -1 
max_spot_n_r = 1 

// координати покажчиків телепортації для Базару

spot_x[0][1] = 285*kof_b + bord_x_b ;
spot_y[0][1] = 830*kof_b + bord_y_b ;
spot_x[1][1] = 380*kof_b + bord_x_b ;
spot_y[1][1] = 580*kof_b + bord_y_b ;
spot_x[2][1] = 380*kof_b + bord_x_b ;
spot_y[2][1] = 320*kof_b + bord_y_b ;
spot_x[3][1] = 730*kof_b + bord_x_b ;
spot_y[3][1] = 380*kof_b + bord_y_b ;
// кількість позицій показчиків для Базару  -1 
max_spot_n_b = 3

// координати покажчиків телепортації для Центру

spot_x[0][2] = 260*kof_c + bord_x_c ;
spot_y[0][2] = 585*kof_c + bord_y_c ;
spot_x[1][2] = 511*kof_c + bord_x_c ;
spot_y[1][2] = 511*kof_c + bord_y_c ;
spot_x[2][2] = 812*kof_c + bord_x_c ;
spot_y[2][2] = 520*kof_c + bord_y_c ;
spot_x[3][2] = 575*kof_c + bord_x_c ;
spot_y[3][2] = 290*kof_c + bord_y_c ;
// кількість позицій показчиків для центру  -1 
max_spot_n_c = 3

// координати покажчиків телепортації для Тухлянки

spot_x[0][3] = 575*kof_t + bord_x_t ;
spot_y[0][3] = 700*kof_t + bord_y_t ;
spot_x[1][3] = 300*kof_t + bord_x_t ;
spot_y[1][3] = 580*kof_t + bord_y_t ;
spot_x[2][3] = 580*kof_t + bord_x_t ;
spot_y[2][3] = 450*kof_t + bord_y_t ;
spot_x[3][3] = 865*kof_t + bord_x_t ;
spot_y[3][3] = 355*kof_t + bord_y_t ;
// кількість позицій показчиків для Ne[kzyrb  -1 
max_spot_n_t = 3

// кімнати так координати для переміщень

room_pos[0][0] = rm_street_first_side;
player_x[0][0] = 1900;
player_y[0][0] = 275;

room_pos[1][0] = rm_street_second_side;
player_x[1][0] = 3320
player_y[1][0] = 270;


room_pos[0][1] = rm_street_container;
player_x[0][1] = 1080
player_y[0][1] = 270;

room_pos[1][1] = rm_fish_and_bazaar;
player_x[1][1] = 995;
player_y[1][1] = 275;

room_pos[2][1] = rm_street_magazine_tech_storage;
player_x[2][1] = 900
player_y[2][1] = 250;

room_pos[3][1] = rm_home_gg;
player_x[3][1] = 320
player_y[3][1] = 250;


room_pos[0][2] = rm_center_left;
player_x[0][2] = 830;
player_y[0][2] = 245;

room_pos[1][2] = rm_center;
player_x[1][2] = 600
player_y[1][2] = 285;

room_pos[2][2] = rm_center_right;
player_x[2][2] = 1100
player_y[2][2] = 280;

room_pos[3][2] = rm_police;
player_x[3][2] = 300
player_y[3][2] = 280;

room_pos[0][3] = rm_south;
player_x[0][3] = 1120;
player_y[0][3] = 255;

room_pos[1][3] = rm_sport_centre;
player_x[1][3] = 470
player_y[1][3] = 255;

room_pos[2][3] = rm_north;
player_x[2][3] = 1050
player_y[2][3] = 270;

room_pos[3][3] = rm_school;
player_x[3][3] = 145;
player_y[3][3] = 255;

}
else{
	// кількість позицій показчиків для вибору варіанту переміщення (доступна кількість телепортацій на район)
	max_spot_n_r = 0;
	max_spot_n_c = 0;
	max_spot_n_b = 0;
	max_spot_n_t = 0;
	
	
// при поїздці на маршрутці	
spot_num[0]=0; // 1 точка телепортації для вокзалу 
spot_num[1]=0; // 1 точка телепортації для Ринку
spot_num[2]=0; // 1 точка телепортації для Центру 
spot_num[3]=0; // 1 точка телепортації для Тухлянки


// координати покажчиків телепортації для Вокзалу

spot_x[0][0] = 243*kof_r + bord_x_r ;
spot_y[0][0] = 285*kof_r + bord_y_r ;


// координати покажчиків телепортації для Базару

spot_x[0][1] = 730*kof_b + bord_x_b ;
spot_y[0][1] = 380*kof_b + bord_y_b ;

// координати покажчиків телепортації для Центру

spot_x[0][2] = 575*kof_c + bord_x_c ;
spot_y[0][2] = 290*kof_c + bord_y_c ;

// координати покажчиків телепортації для Тухлянки

spot_x[0][3] = 865*kof_t + bord_x_t ;
spot_y[0][3] = 355*kof_t + bord_y_t ;

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
