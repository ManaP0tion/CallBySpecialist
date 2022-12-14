draw_set_font(font_bullets)

draw_self()
if(reloading)
	draw_text(x+10, y-20, "reloading")
	
if(global.pistol_bullets>0)
	draw_text(x+10, y-30, string(global.pistol_bullets))
	
