//pause
if(global.Pause == 1) exit;

//settings
self.HP = (100 / 1.2 * 1.2 * global.upgrade_level);
self.Trap = 4 + global.upgrade_level;

//activate trap
if(position_meeting(x, y, o_A_A_Unit_1 or o_A_A_Unit_2 or o_A_L_Unit_1 or o_A_L_Unit_2 or o_A_T_Unit_1 or o_A_T_Unit_2 or o_A_Trap_1 or o_A_Trap_2 or o_A_Trap_3 or o_A_Trap_4 or o_A_Wall or o_A_Mind)){
	self.Trap -= 1;
}
if(self.Trap <= 0){
	instance_destroy();
}

//dead
if(self.HP <= 0){
	//if i can, insert here the animation when character dead.
	instance_destroy();}

//damage
	//bullet damage
	if(position_meeting( self.x , self.y, o_A_Bullet)) {
		self.HP -= 3;
	}
	//melee damage
	if(position_meeting( self.x , self.y, o_A_Melee)) {
		self.HP -= 5;
	}