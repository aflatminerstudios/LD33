///scrPunch(player, actionVars)

var player = argument0;
var a = argument1;

var o = instance_create(0, 0, objPunch);

o.parent = player.id;

//Setup variables
o.damage = ds_map_find_value(a, "damage");
o.knockback = ds_map_find_value(a, "knockback");
o.xSize = ds_map_find_value(a, "xSize");
o.ySize = ds_map_find_value(a, "ySize");
o.xDist = ds_map_find_value(a, "xDist");
o.yDist = ds_map_find_value(a, "yDist");
o.angle = ds_map_find_value(a, "angle");

o.alarm[0] = ds_map_find_value(a, "numFrames");
