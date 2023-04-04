
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


