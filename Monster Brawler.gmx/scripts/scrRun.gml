///scrRun(player, val)

var player = argument0;
var val = argument1;


with (player) {

  if (sprite_index == curSprite) {
    sprite_index = curSpriteRunning;
  }

  physics_apply_force(x, y, curForce * val, 0);

  if (phy_linear_velocity_x * sign(val) >= curMaxSpeed) {
    phy_linear_velocity_x = curMaxSpeed * sign(val);
  }
  
  if (sign(val) >= 0) {
    facing = 1;
    image_xscale = 1;
  } else {
    facing = -1;
    image_xscale = -1;
  }
  
  isIdle = false;
  
}
