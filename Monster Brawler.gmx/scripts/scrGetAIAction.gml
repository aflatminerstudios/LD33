///scrGetAIAction()

var n;
var i;
//currentGoals will have 3 items in this order: node, target, and step of path
if (ds_list_empty(currentGoals)) {
  n = scrGetNearestNode(self.id);

  ds_list_add(currentGoals, n);
  
  i = scrNodeGetLowestCost(n);
  ds_list_add(currentGoals, i);  
  ds_list_add(currentGoals, 0);    
}

n = currentGoals[| 0];
i = currentGoals[| 1];
var l = array_length_2d(n.paths, i) - 1;
var step = currentGoals[| 2];
if (step * 2 > l) {

  ds_list_clear(currentGoals);
  return 0;
}

var desc = n.paths[i, step * 2];
var data = n.paths[i, step * 2 + 1];

ds_map_add(actionList, "Say", string(desc) + " " + string(jumpWait));

if (desc == "MoveHorizontal") {
  var dataX = data[| 0];
  var dataY = data[| 1];
  var col = collision_point(dataX, y - 5, objPlayer, true, false)
  if (col == self.id) {
    currentGoals[| 2] += 1;
    return 0;
  } else if (x > dataX) {
    ds_map_add(actionList, "MoveHorizontal", -1);    
  } else {
    ds_map_add(actionList, "MoveHorizontal", 1);
  }
} else if (desc == "Jump") {
  var dataX = data[| 1];
  var dataY = data[| 1];
  
  if (jumpWait < -1) {
    jumpWait = data[| 0];
    ds_map_add(actionList, "Jump", 1);
  }   
  
  if (jumpWait == 0) {
    var col = collision_point(dataX, y - 5, objPlayer, true, false) 
    if (col == self.id) {
      jumpWait = -1;
    } else if (x > dataX) {
      ds_map_add(actionList, "MoveHorizontal", -1);    
    } else {
      ds_map_add(actionList, "MoveHorizontal", 1);
    }    
  } else if (jumpWait > 0) {
    jumpWait--;
  }
  
  if (jumpWait == -1) {
    if (place_meeting(x, y + 3, objFloor) 
      || place_meeting(x + sprite_width / 2, y + 3, objFloor) 
      || place_meeting(x - sprite_width / 2, y + 3, objFloor) ) {
      jumpWait = -2;
      ds_map_add(actionList, "JumpReleased", 1);
      currentGoals[| 2] += 1;
      return 0;
    }
  }

}

if (place_meeting(x, y, objPlayer)) {
  ds_map_add(actionList, "DoAction1", 1);
}
if (place_meeting(x, y + (sprite_height - 1), objPlayer)) {
  ds_map_add(actionList, "MoveHorizontal", 1);
}

var cType;
// Use action2 randomly as appropriate
if (costume != noone && !is_undefined(costume) && instance_exists(costume)) {
  cType = costume.object_index;
} else {
  cType = noone;
}

var r = random(1);

switch (cType) {
  case noone:
    if (r < 1 / room_speed) {
      ds_map_add(actionList, "DoAction2", 1);
    }      
    break;
  
  case objWerewolfCostume:
    if (r < .2 / room_speed) {
      ds_map_add(actionList, "DoAction2", 1);
    }       
    break;
    
  case objDBCostume:
    if (r < .2 / room_speed) {
      ds_map_add(actionList, "DoAction2", 1);
    } else {
      var inLine = false;
      with (objPlayer) {
        if (self.id != other.id) {
          if (x == other.x) {
            ds_map_add(actionList, "DoAction2", 1); 
          }
        }
      }
    }
       
    
    break;
}
