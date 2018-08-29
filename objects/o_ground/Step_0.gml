//pause
if(global.Pause == 1) exit;

//money settings
global.money += time * (0.6 * global.farm) * 30;

//farm
if(global.farm <20){
	k = irandom_range(25, 75);
	k -= delta_time/1000000;
	if(k<=0){
		global.farm += 1;
	}
}
else if(global.farm = 20){
	global.farm = 20;
}