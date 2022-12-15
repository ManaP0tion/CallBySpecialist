draw_set_font(font_menu)
draw_sprite_stretched(spr_healthbase, 0, view_xport[0]+ 80, view_yport[0] + 100, min(healthbar_width, healthbar_width), healthbar_height)
draw_sprite_stretched(spr_healthbar, 0, view_xport[0]+ 80, view_yport[0] + 100, min((HP/HP_MAX)*healthbar_width, healthbar_width), healthbar_height)
font_set_cache_size(font_menu,20)
draw_set_color(c_white)
draw_set_halign(fa_middle);
//draw_text(120, 100, "HP : "+string(HP))
//draw_text(100, 130, "BULLET : "+string(global.pistol_bullets))


draw_set_font(font_menu)
draw_sprite_stretched(spr_silentbase, 0, silentbar_x, silentbar_y, min(silentbar_width, silentbar_width), silentbar_height)
draw_sprite_stretched(spr_silentbar, 0, silentbar_x, silentbar_y, min((global.silent/silent_MAX)*silentbar_width, silentbar_width), silentbar_height)
font_set_cache_size(font_menu,20)
draw_set_halign(fa_middle);
//draw_text(120,140, "Silent : "+string(global.silent))


