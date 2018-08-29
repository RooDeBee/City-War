//pause
if(global.Pause == 1) exit;

if( mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_A_Privious) and (o_A_Privious.visible = 1)){
	if(global.Unit = 1){
		global.Unit = 0;
	}
	if(global.Building = 1){
		global.Building = 0;
	}
}

x = 1479 + (global.Move_Position * global.Move_speed);
