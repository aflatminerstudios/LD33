///scrThrow(player, actionVars)

var player = argument0;
var a = argument1;

var o = instance_create(player.x + (a.xDist * player.facing), player.y + a.yDist, objThrown);

o.parent = player.id;
o.scriptCall = a.scriptCall;
o.scriptParams = a.scriptParams;
o.knockback = a.knockback;
o.sprite_index = a.sprite;
o.xForce = a.xForce;
o.yForce = a.yForce;

o.xOffset = a.xOffset;
o.yOffset = a.yOffset;

o.fixture = physics_fixture_create();

physics_fixture_set_box_shape(o.fixture, o.sprite_width / 2, o.sprite_height / 2);

physics_fixture_set_density(o.fixture, 0.05);
physics_fixture_set_friction(o.fixture, 0.2);
physics_fixture_set_angular_damping(o.fixture, 0.1);
physics_fixture_set_linear_damping(o.fixture, 0.1);
physics_fixture_set_restitution(o.fixture, 0.1);

o.boundFixture = physics_fixture_bind(o.fixture, o);



with (o) {
  physics_apply_impulse(x + xOffset, y + yOffset, xForce * o.parent.facing, yForce);
}
