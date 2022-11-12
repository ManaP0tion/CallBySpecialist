if(global.pause == 1){
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(0, 0, room_width, room_height, 0)
	draw_set_halign(fa_center)
	draw_set_font(font_menu)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(x/2, y/2, "press ESC to Continue")
	draw_set_color(c_black)
}