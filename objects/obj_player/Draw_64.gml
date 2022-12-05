draw_set_font(font_menu)
draw_sprite(spr_healthbase, 0, healthbar_x, healthbar_y)
draw_sprite_stretched(spr_healthbar, 0, healthbar_x, healthbar_y, min((HP/HP_MAX)*healthbar_width, healthbar_width), healthbar_height)
draw_sprite(spr_healthbase, 0, healthbar_x, healthbar_y);
font_set_cache_size(font_menu,20)
draw_text(100, 100, "HP : "+string(HP))
draw_text(100, 130, "BULLET : "+string(global.pistol_bullets))
