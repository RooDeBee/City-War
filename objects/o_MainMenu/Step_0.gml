//pause
if(global.Pause == 1){
	o_MainMenu.visible = 1;
	if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_MainMenu)){
		room_goto(rm_Main);
	}
}
else{o_MainMenu.visible = 0;}

//move
x = 990 + (global.Move_Position * global.Move_speed);