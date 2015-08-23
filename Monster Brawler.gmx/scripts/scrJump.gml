///scrJump(player)

var player = argument0;

with (player) {
  physics_apply_impulse(x, y,0 , -1 * jumpForce);
  
  canJump = false;
  isJumping = true;
  jumpTimeRemaining = 15;
  beenReleased = false;
}
