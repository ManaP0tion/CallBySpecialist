draw_set_font(font_bullets)

if(instance_exists(obj_pistol)) {
	draw_text(x, y, global.pistol_bullets)
}
if(instance_exists(obj_rifle)) {
	draw_text(x, y, global.rifle_bullets)
}