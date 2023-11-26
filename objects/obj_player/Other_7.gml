if (sprite_index != spr_player_idle and sprite_index != spr_player_walking) {
	if (hspeed != 0 or vspeed != 0) {
		sprite_index = spr_player_walking;	
	} else {
		sprite_index = spr_player_idle;
	}
}