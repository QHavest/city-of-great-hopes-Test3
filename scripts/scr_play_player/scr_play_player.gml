function scr_play_player(){
event_inherited();
move     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyl     =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyup    =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydown  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
keyattack=  keyboard_check_pressed(ord("F"));
key_room_go = keyboard_check(ord("E"));


/*inputDirection = point_direction(0,0,keyr-keyl,keydown-keyup);
inputMagnitude = (keyr - keyl != 0) || (keydown - keyup != 0);

hSpeed = lengthdir_x(inputMagnitude * walkspd, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkspd, inputDirection);
x+=hSpeed;
y+=vSpeed;*/

// sound

//scr_play_fon_music(room);

//Частини 2 системи слідкування за героєм
}