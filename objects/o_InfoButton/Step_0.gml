//codes
if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_InfoButton)){
	if(room = rm_Main){room_goto(rm_Info);}
	if(room = rm_Info){room_goto(rm_Main);}
}