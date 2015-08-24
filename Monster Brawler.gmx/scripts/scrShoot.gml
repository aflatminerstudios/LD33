///scrShoot(player, actionVar)

var player = argument0;
var a = argument1;

var xDist = ds_map_find_value(a, "xDist");
var yDist = ds_map_find_value(a, "yDist");

var o = instance_create(player.x + (xDist * player.facing), player.y + yDist, objShot);

o.parent = player.id;
o.damage = ds_map_find_value(a, "damage");
o.knockback = ds_map_find_value(a, "knockback");
o.sprite_index = ds_map_find_value(a, "sprite");
o.xForce = ds_map_find_value(a, "xForce");
o.yForce = ds_map_find_value(a, "yForce");
o.travelDist = ds_map_find_value(a, "travelDist");
o.xOffset = ds_map_find_value(a, "xOffset");
o.yOffset = ds_map_find_value(a, "yOffset");

o.fixture = physics_fixture_create();

physics_fixture_set_box_shape(o.fixture, o.sprite_width / 2, o.sprite_height / 2);

physics_fixture_set_density(o.fixture, 0.05);
physics_fixture_set_friction(o.fixture, 0.2);
physics_fixture_set_angular_damping(o.fixture, 0.1);
physics_fixture_set_linear_damping(o.fixture, 0.1);
physics_fixture_set_restitution(o.fixture, 0.1);

o.boundFixture = physics_fixture_bind(o.fixture, o);


with (o) {
  physics_apply_local_impulse(xOffset, yOffset, xForce * o.parent.facing, yForce);
}