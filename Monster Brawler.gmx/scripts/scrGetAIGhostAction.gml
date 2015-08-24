///scrGetAIGhostAction()

//currentGoals will have 3 items in this order: node, target, and step of path
if (ds_list_empty(currentGoals)) {
  ds_list_add(currentGoals, "FullMove", irandom(1280), irandom(720));
}

var desc = currentGoals[| 0];
var dataX = currentGoals[| 1];
var dataY = currentGoals[| 2];

//show_debug_message(string(desc) + ": " + string(dataX) + ", " + string(dataY));

if (desc == "FullMove") {

  var dist = scrGetDistance(x, y, dataX, dataY);
  //show_debug_message("Dist = " + string(dist));
  if (dist < 10) {
    ds_list_clear(currentGoals);
    return 0;
  }
  
  if (abs(x - dataX) < 5) {
    //Do nothing
  } else if (x < dataX) {
    ds_map_add(actionList, "MoveHorizontal", 1);
  } else if (x > dataX) {
    ds_map_add(actionList, "MoveHorizontal", -1);    
  }
  
  if (abs(y - dataY) < 5) {
    //Do nothing
  } else if (y < dataY) {
    ds_map_add(actionList, "MoveVertical", 1);
  } else if (y > dataY) {
    ds_map_add(actionList, "MoveVertical", -1);    
  }
}
