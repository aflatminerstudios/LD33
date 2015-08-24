///scrRun(player, val)

var player = argument0;
var val = argument1;


with (player) {

  if (sprite_index != curSpriteRunning && !isJumping & !isAction ) {
      if (isFalling && !place_meeting(x, y + 5, objTile) && !place_meeting(x, y + 5, objPlayer)) {
        // Do nothing
        // Hackity hack! Don't talk back!
      } else {
        sprite_index = curSpriteRunning;
      }  
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
