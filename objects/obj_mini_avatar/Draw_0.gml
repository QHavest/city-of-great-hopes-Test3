if (damage_timer > 0) {
    draw_set_alpha(0.2);
    draw_sprite(sprite_index, image_index, x, y);
	draw_set_alpha(1);
}
else {
    draw_sprite(sprite_index, image_index, x, y);
}
