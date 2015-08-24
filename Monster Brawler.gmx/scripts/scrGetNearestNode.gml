///scrGetNearestCostume(player)

var player = argument0;
var nodeList = scrGetNodeList();
var nearest = noone;
var minDist = 10000;

if (is_array(nodeList) && nodeList[0] != noone) {

  for (var i = 0; i < array_length_1d(nodeList); ++i) {
    var dist;
    var cur = nodeList[i];

    dist = scrGetDistance(player.x, player.y, cur.x, cur.y);
    if (dist < minDist) {
      nearest = cur;
      minDist = dist;
    }    
  }
}

return nearest;