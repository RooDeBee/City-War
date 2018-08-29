//pause
if(global.Pause == 1) exit;

//move
x = 809 + (global.Move_Position * global.Move_speed);

//various
o_Unit_1_L.unitprice = 150 / 1.2 * 1.2 * global.upgrade_level;

//if
if(( mouse_check_button_pressed(mb_left)) and (position_meeting(mouse_x, mouse_y, o_Unit_1_L)) and (global.money >= o_Unit_1_L.unitprice) and o_Unit_1_L.visible = 1){
		global.money = global.money - o_Unit_1_L.unitprice;
		instance_create_depth(o_A_Mind.x, 570, 600,o_A_L_Unit_1);
}
