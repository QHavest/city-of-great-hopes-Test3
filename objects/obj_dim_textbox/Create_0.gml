depth=-99999;

// параметри вікна з текстом
textbox_width = 200;
textbox_hight = 64;
border    = 8;
line_sep  = 15;
line_widt = textbox_width-border*2;
txtb_sprite = sp_doc_wall;
txtb_img = 0;
txtb_img_spd = 6/30;


// змінні для виводу тексту
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd  = 1;
setup = false;

 //  вибір реплік
 
 option[0]="";
 option_link_id[0] = -1;
 option_pos    = 0;
 option_number = 0;
X_op[0]=camera_get_view_x(view_camera[0])+8;
X_op[1]=camera_get_view_x(view_camera[0])+8;
X_op[2]=camera_get_view_x(view_camera[0])+280;
X_op[3]=camera_get_view_x(view_camera[0])+280;
Y_op[0]=camera_get_view_y(view_camera[0])+240;
Y_op[1]=camera_get_view_y(view_camera[0])+270;
Y_op[2]=camera_get_view_y(view_camera[0])+240;
Y_op[3]=camera_get_view_y(view_camera[0])+270;
