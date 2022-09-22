pos = 0;
spot=0;
acepted_key = 0;

kof_b = 0.8;
kof_r = 0.8;
kof_c = 0.8;
kof_t = 0.8;
vew_w = 1920;
vew_h = 1080;

b_w = sprite_get_width(spr_mp_Bazar);
b_h = sprite_get_height(spr_mp_Bazar);
r_w = sprite_get_width(spr_mp_Railway_station);
r_h = sprite_get_height(spr_mp_Railway_station);
c_w = sprite_get_width(spr_mp_Center);
c_h = sprite_get_height(spr_mp_Center);
t_w = sprite_get_width(spr_mp_Tukhlyanka);
t_h = sprite_get_height(spr_mp_Tukhlyanka);

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
pos_x[0] = 1080;
pos_y[0] = 2880;
pos_x[1] = 1090;
pos_y[1] = 2222;
pos_x[2] = 985;
pos_y[2] = 1365;
pos_x[3] = 930;
pos_y[3] = 660;

// координати покажчиків телепортації для Вокзалу

spot_x[0][0] = 632*kof_r + bord_x_r ;
spot_y[0][0] = 538*kof_r + bord_y_r ;
spot_x[1][0] = 521*kof_r + bord_x_r ;
spot_y[1][0] = 328*kof_r + bord_y_r ;


// координати покажчиків телепортації для Базару

spot_x[0][1] = 420*kof_b + bord_x_b ;
spot_y[0][1] = 642*kof_b + bord_y_b ;
spot_x[1][1] = 738*kof_b + bord_x_b ;
spot_y[1][1] = 592*kof_b + bord_y_b ;
spot_x[2][1] = 420*kof_b + bord_x_b ;
spot_y[2][1] = 280*kof_b + bord_y_b ;


// координати покажчиків телепортації для Центру

spot_x[0][2] = 260*kof_c + bord_x_c ;
spot_y[0][2] = 585*kof_c + bord_y_c ;
spot_x[1][2] = 511*kof_c + bord_x_c ;
spot_y[1][2] = 511*kof_c + bord_y_c ;
spot_x[2][2] = 812*kof_c + bord_x_c ;
spot_y[2][2] = 520*kof_c + bord_y_c ;
spot_x[3][2] = 510*kof_c + bord_x_c ;
spot_y[3][2] = 350*kof_c + bord_y_c ;

// координати покажчиків телепортації для Тухлянки

spot_x[0][3] = 575*kof_t + bord_x_t ;
spot_y[0][3] = 700*kof_t + bord_y_t ;
spot_x[1][3] = 865*kof_t + bord_x_t ;
spot_y[1][3] = 665*kof_t + bord_y_t ;
spot_x[2][3] = 300*kof_t + bord_x_t ;
spot_y[2][3] = 580*kof_t + bord_y_t ;
spot_x[3][3] = 580*kof_t + bord_x_t ;
spot_y[3][3] = 450*kof_t + bord_y_t ;


// кімнати для переміщень
room_pos[0][0] = rm_street_first_side;
room_pos[1][0] = rm_street_second_side;
player_x[0][0] = 1900;
player_y[0][0] = 275;
player_x[1][0] = 1100
player_y[1][0] = 265;

room_pos[0][1] = rm_fish_and_bazaar;
room_pos[1][1] = rm_home_gg;
room_pos[2][1] = rm_street_magazine_tech_storage;
player_x[0][1] = 995;
player_y[0][1] = 275;
player_x[1][1] = 1350
player_y[1][1] = 270;
player_x[2][1] = 900
player_y[2][1] = 250;

room_pos[0][2] = rm_center_left;
room_pos[1][2] = rm_center;
room_pos[2][2] = rm_center_right;
room_pos[3][2] = rm_police;
player_x[0][2] = 830;
player_y[0][2] = 245;
player_x[1][2] = 600
player_y[1][2] = 285;
player_x[2][2] = 1100
player_y[2][2] = 280;
player_x[3][2] = 750
player_y[3][2] = 275;

room_pos[0][3] = rm_south;
room_pos[1][3] = rm_school;
room_pos[2][3] = rm_sport_centre;
room_pos[3][3] = rm_north;
player_x[0][3] = 1120;
player_y[0][3] = 255;
player_x[1][3] = 1650
player_y[1][3] = 245;
player_x[2][3] = 470
player_y[2][3] = 255;
player_x[3][3] = 1050
player_y[3][3] = 270;
