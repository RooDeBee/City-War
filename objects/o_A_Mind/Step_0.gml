//pause
if(global.Pause == 1) exit;

//settings
o_A_Mind.HP = (500 / 1.2 * 1.2 * global.upgrade_level);

//dead
if(o_A_Mind.HP <= 0){
	//if i can, insert here the animation when character dead.
	instance_destroy();
	global.Fail = 1;}

//damage
	//bullet damage
	if(position_meeting( self.x , self.y, o_E_Bullet)) {
		self.HP -= 3;
	}
	//melee damage
	if(position_meeting( self.x , self.y, o_E_Melee)) {
		self.HP -= 5;
	}
	
//upgrade
if(global.upgrade_level = 1){
	sprite_index = s_A_Mind_1;
}
else if(global.upgrade_level = 2){
	sprite_index = s_A_Mind_2;
}
else if(global.upgrade_level = 3){
	sprite_index = s_A_Mind_3;
}