//pause
if(global.Pause == 1) exit;

//move
x = 479 + (global.Move_Position * global.Move_speed);

//various
o_Unit_2_A.unitprice = 100 * 1.2 * global.upgrade_level;

//if
if(( mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x, mouse_y, o_Unit_2_A)) and (global.money >= o_Unit_2_A.unitprice) and o_Unit_2_A.visible = 1){
		global.money = global.money - o_Unit_2_A.unitprice;
		instance_create_depth(o_A_Mind.x, 570, 600, o_A_A_Unit_2);
}
