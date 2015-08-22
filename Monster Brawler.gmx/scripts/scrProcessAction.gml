///scrProcessAction(player)

player = argument0;

with (player) {

  while (!ds_map_empty(actionList)) {
    var key = ds_map_find_first(actionList);
    
    var val = ds_map_find_value(actionList, key);
    show_debug_message("Processing " + string(key) + " : " + string(val));
    if (key == "MoveHorizontal") {
      physics_apply_force(x, y, force * val, 0);
  
      if (phy_linear_velocity_x * sign(val) >= maxSpeed) {
        phy_linear_velocity_x = maxSpeed * sign(val);
      }
    } else if (key == "Jump") {
    
      if (canJump) {      
        scrJump(player);
      }
    } else if (key == "DoAction1") {
    
    } else if (key == "DoAction2") {
    
    } else if (key == "Say") {
      scrSay(x, y, val);
    }
    
    ds_map_delete(actionList, key);
  }
}
