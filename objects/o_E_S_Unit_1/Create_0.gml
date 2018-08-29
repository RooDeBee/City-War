//HP Set(create)
HP = 0;
cooltime = 0;
path_start(path_Enermy, 5, path_action_continue, true);
image_xscale = image_xscale * 3;
image_yscale = image_yscale * 3;
//set hp
self.HP = (10 / 1.5 * 1.5 * global.upgrade_level_E);