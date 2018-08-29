//pause
if(global.Pause == 1) exit;

//settings
self.HP = (150 / 1.2 * 1.2 * global.upgrade_level);

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