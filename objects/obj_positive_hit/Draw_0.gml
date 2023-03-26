
//counter = 1;
if (counter == 1){
	image_alpha = clamp(image_alpha - 0.05, 0, 1);
	if (image_alpha == 0.2){
	counter--;
	}
} else if (counter == 0){
image_alpha = clamp(image_alpha + 0.05, 0, 1);
if (image_alpha == 1){
	counter++;
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);


// Визначаємо змінні
/*if (blink_count > 0) {
    if (blink_timer == 0) {
        // Малює напівпрозорий спрайт
          //draw_set_alpha(0.5);
		  draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);
    } else if (blink_timer == blink_interval) {
        // Малює непрозорий спрайт
       // draw_set_alpha(0.2);
   // draw_sprite(sprite_index, image_index, x, y);
	//	draw_set_alpha(0.8);
		draw_sprite(sprite_index, image_index, x, y);
        blink_count--;
    }
	blink_count++;
    blink_timer++;
    if (blink_timer > blink_interval) {
        blink_timer = 0;
    }
}

