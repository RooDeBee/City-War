if(self.cooltime_M_A > 0){
	self.cooltime_M_A -= delta_time/1000000;
}
else{
x += 1;
self.count += 1;
self.cooltime_M_A = 0.1;
}
if(self.count >= 5) instance_destroy();