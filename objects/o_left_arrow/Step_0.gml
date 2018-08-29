//pause
if(global.Pause == 1) exit;


if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_left_arrow) and ( 156 < x <= 2136 )){
	x -= global.Move_speed;
	global.Move_Position -= 1;
}

x = 156 + (global.Move_Position * global.Move_speed);
