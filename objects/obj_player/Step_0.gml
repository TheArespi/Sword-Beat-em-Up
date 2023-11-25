var _key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _horizontal_not_pressed = !_key_left and !_key_right;
var _vertical_not_pressed = !_key_up and !_key_down;

if (_horizontal_not_pressed) {
	image_index = spr_player_idle;
	image_speed = 1;
	hspeed = 0;
} else {
	image_index = spr_player_walking;
	image_speed = 1;
}

if (_key_left) {
	hspeed = speed_walk * -1;
	image_xscale = -1;
} else if (_key_right) {
	hspeed = speed_walk;
	image_xscale = 1;
}
	
if (_vertical_not_pressed) {
	image_index = spr_player_idle;
	image_speed = 1;
	vspeed = 0;
} else {
	image_index = spr_player_walking;
	image_speed = 1;
}

if (_key_up)
	vspeed = speed_walk * -1
else if (_key_down)
	vspeed = speed_walk;