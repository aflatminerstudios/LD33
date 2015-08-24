///scrGetNearestCostume(player)

var player = argument0;
var costumeList = scrGetCostumeList();
var nearest = noone;
var minDist = 10000;

if (is_array(costumeList) && costumeList[0] != noone) {

  for (var i = 0; i < array_length_1d(costumeList); ++i) {
    var dist;
    var cur = costumeList[i];

    dist = scrGetDistance(player.x, player.y, cur.x, cur.y);
    if (dist < minDist) {
      nearest = cur;
      minDist = dist;
    }    
  }
}

return nearest;