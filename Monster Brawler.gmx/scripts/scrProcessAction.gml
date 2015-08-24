///scrProcessAction(player)

player = argument0;

with (player) {

  while (!ds_map_empty(actionList)) {
    var key = ds_map_find_first(actionList);
    
    var val = ds_map_find_value(actionList, key);
    //show_debug_message("Processing " + string(key) + " : " + string(val));
    if (key == "MoveHorizontal") {    
          
      scrRun(player, val);
      
    } else if (key == "Jump") {
    
      if (canJump) {      
        scrJump(player);
      }
    } else if (key == "JumpReleased") {
      
      with (player) {
        beenReleased = true;
      }
    
    } else if (key == "DoAction1") { 
    
      if (cdTimer1 <= 0) {
      
        var p = player;
        if (player.costume != noone && instance_exists(player.costume)) {
          p = player.costume;  
        }

        audio_play_sound(p.action1Sound[irandom(1)], 10, false);
      
        script_execute(curDoAction1, player, curAction1);
        cdTimer1 = player.curCooldown1;
      }
    } else if (key == "DoAction2") {
      if (cdTimer2 <= 0) {
      
        var p = player;
        if (player.costume != noone && instance_exists(player.costume)) {
          p = player.costume;  
        }

        audio_play_sound(p.action2Sound[irandom(1)], 10, false);
      
        script_execute(curDoAction2, player, curAction2);
        cdTimer2 = player.curCooldown2;
      }
    } else if (key == "Say") {
      scrSay(x, y, val);
    }
    
    ds_map_delete(actionList, key);
  }
}
