//pause
if(global.Pause == 1) exit;

//move
x = 479 + (global.Move_Position * global.Move_speed);

//script
if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_A_Unit) and (o_A_Unit.visible = 1)){
	global.Unit = 1;
}

