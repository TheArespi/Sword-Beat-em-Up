var _key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _key_left_pressed = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
var _key_left_released = keyboard_check_released(vk_left) or keyboard_check_released(ord("A"));

var _key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _key_right_pressed = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
var _key_right_released = keyboard_check_released(vk_right) or keyboard_check_released(ord("D"));

var _key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _key_up_pressed = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
var _key_up_released = keyboard_check_released(vk_up) or keyboard_check_released(ord("W"));

var _key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _key_down_pressed = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
var _key_down_released = keyboard_check_released(vk_down) or keyboard_check_released(ord("S"));

var _horizontal_not_pressed = !_key_left and !_key_right;
var _vertical_not_pressed = !_key_up and !_key_down;
var _direction_button_pressed = _key_left_pressed or _key_right_pressed or _key_up_pressed or _key_down_pressed;
var _direction_button_released = _key_left_released or _key_right_released or _key_up_released or _key_down_released;
var _direction_button_is_not_pressing = _horizontal_not_pressed and _vertical_not_pressed;

var _vstrike_pressed = keyboard_check(ord("1"));
var _hstrike_pressed = keyboard_check(ord("2"));
var _stab_pressed = keyboard_check(ord("3"));

if (_vstrike_pressed){
	if (sprite_index != spr_player_vertical_strike)
		sprite_index = spr_player_vertical_strike
}

if (_hstrike_pressed){
	if (sprite_index != spr_player_horizontal_strike)
		sprite_index = spr_player_horizontal_strike
}

if (_stab_pressed){
	if (sprite_index != spr_player_stab)
		sprite_index = spr_player_stab
}
	
	
if (_horizontal_not_pressed) 
	hspeed = 0;
else if (_key_left) {
	hspeed = speed_walk * -1;
	image_xscale = -1;
} else if (_key_right) {
	hspeed = speed_walk;
	image_xscale = 1;
}
	
if (_vertical_not_pressed)
	vspeed = 0;
else if (_key_up)
	vspeed = speed_walk * -1
else if (_key_down)
	vspeed = speed_walk;
	
if (_direction_button_released and _direction_button_is_not_pressing) {
	if (sprite_index != spr_player_idle)
		sprite_index = spr_player_idle;
	show_debug_message("CHANGE TO IDLE");
	show_debug_message(string(sprite_index) + " == " + string(spr_player_idle));
} else if (_direction_button_pressed) {
	if (sprite_index != spr_player_walking)
		sprite_index = spr_player_walking;
	show_debug_message("CHANGE TO WALKING");
	show_debug_message(string(sprite_index) + " == " + string(spr_player_walking));
}
