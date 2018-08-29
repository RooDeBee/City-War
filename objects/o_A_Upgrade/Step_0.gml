//pause
if(global.Pause == 1) exit;

//upgrade_price
var upgrade_price = 750 * 4 * global.upgrade_level;

//if clicked
if( mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, o_A_Upgrade) and (o_A_Upgrade.visible = 1)){
	if( global.money >= upgrade_price ){
		global.upgrade_level += 1;
		global.money -= upgrade_price;
	}
	else{
		//chagne color for 0.4 sec
	}
}

x = 1149 + (global.Move_Position * global.Move_speed);
