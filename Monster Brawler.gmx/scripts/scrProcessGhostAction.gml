///scrProcessGhostAction(player)

var player = argument0;

with (player) {

  while (!ds_map_empty(actionList)) {
    var key = ds_map_find_first(actionList);
    
    var val = ds_map_find_value(actionList, key);
    //show_debug_message("Processing " + string(key) + " : " + string(val));
    if (key == "MoveHorizontal") {                 
      x += moveSpeed * val;
      hFacing = sign(val);
      image_xscale = hFacing;
    } else if (key == "MoveVertical") {
      y += moveSpeed * val;    
      vFacing = sign(val);      
    } else if (key == "Jump") {
    

    } else if (key == "JumpReleased") {
      

    
    } else if (key == "DoAction1") { 
    

    } else if (key == "DoAction2") {
   
    } else if (key == "Say") {
      //scrSay(x, y, val);
    }
    
    ds_map_delete(actionList, key);
  }
}