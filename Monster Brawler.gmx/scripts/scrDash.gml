///scrDash(player, actionVars)

var player = argument0;
var a = argument1;

var o = instance_create(player.x, player.y, objDash);

o.parent = player.id;

//Setup variables
o.knockback = ds_map_find_value(a, "knockback");
o.dashSpeed = ds_map_find_value(a, "dashSpeed");
o.sprite = ds_map_find_value(a, "sprite");
o.numFrames = ds_map_find_value(a, "numFrames");
/*o.sprite_index = o.sprite;

o.fixture = physics_fixture_create();

physics_fixture_set_box_shape(o.fixture, o.sprite_width / 2, o.sprite_height / 2);

physics_fixture_set_density(o.fixture, 5);
physics_fixture_set_friction(o.fixture, 0.2);
physics_fixture_set_angular_damping(o.fixture, 0.1);
physics_fixture_set_linear_damping(o.fixture, 0.1);
physics_fixture_set_restitution(o.fixture, 0.1);

o.boundFixture = physics_fixture_bind(o.fixture, o);

o.facing = o.parent.facing;

o.image_xscale = o.facing;*/

o.facing = player.facing;

player.curDoAction1 = scrStopDash;

o.alarm[0] = o.numFrames;