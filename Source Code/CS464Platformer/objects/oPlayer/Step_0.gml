//Player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
left_touch = mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,oLeftArrow);
right_touch = mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y,oRightArrow);
//Calc movement
var move = (key_right + right_touch) - (key_left + left_touch)

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y+1, oWall)) && (key_jump) {
	vsp = -7;
}


//Horizontal Collision
if (place_meeting(x+hsp, y, oWall)) {
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, oWall)) {
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

if (place_meeting(x, y, oSpike)) {
	x = 64;
	y = 32;
}

if (place_meeting(x, y, oGoal)) {
	SlideTransition(TRANS_MODE.NEXT);
}











