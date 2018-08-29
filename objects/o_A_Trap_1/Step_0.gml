//pause
if(global.Pause == 1) exit;

//settings
self.HP = (100 / 1.2 * 1.2 * global.upgrade_level);
self.Trap = 4 + global.upgrade_level;

//activate trap
if(position_meeting(x, y, o_E_Units)){
	self.Trap -= 1;
}
if( self.Trap <= 0){
	instance_destroy();
}

//dead
if(self.HP <= 0){
	//if i can, insert here the animation when character dead.
	instance_destroy();}

//damage
	//bullet damage
	if(position_meeting( self.x , self.y, o_E_Bullet)) {
		self.HP -= 3;
	}
	//melee damage
	if(position_meeting( self.x , self.y, o_E_Melee)) {
		self.HP -= 5;
	}