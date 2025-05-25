speed_y = min(10, speed_y + 0.1);
speed_x = 0;

if keyboard_check(vk_left) {
	speed_x = -1;
}

if keyboard_check(vk_right) {
	speed_x = 1;
}

if place_meeting(x, y+1, GroundObject) {
	speed_y = 0;
	if keyboard_check(vk_up){
		speed_y = -2;
	}
}

move_and_collide(speed_x, speed_y, GroundObject);

if place_meeting(x, y, FlagObject) {
	room_goto_next();
}

if place_meeting(x, y, SpikeObject) {
	room_restart();
}
