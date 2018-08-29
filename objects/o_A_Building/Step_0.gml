//pause
if(global.Pause == 1) exit;

//move
x = 809 + (global.Move_Position * global.Move_speed);

//script
if( mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_A_Building) and (o_A_Building.visible = 1)){
	global.Building = 1;
}
