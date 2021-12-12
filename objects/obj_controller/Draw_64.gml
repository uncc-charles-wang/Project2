draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(55, 35, string("Lives: ") + string(global.lives));
draw_text(55, 55, string("Score: ") + string(global.score));

draw_set_halign(fa_middle);
draw_text(1000, 55, string(global.time));