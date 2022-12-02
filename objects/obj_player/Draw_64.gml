//draw_sprite(spr_health_base, 0,healthbar_x, healthbar_y)
//draw_sprite_stretched(spr_health, 0, healthbar_x, healthbar_y, min((HP/HP_MAX)*healthbar_width, healthbar_width), healthbar_height)
//draw_sprite(spr_health_base, 0, healthbar_x, healthbar_y);
draw_text(100, 100, "HP : "+string(HP))
draw_text(100, 120, "BULLET : "+string(global.pistol_bullets))
