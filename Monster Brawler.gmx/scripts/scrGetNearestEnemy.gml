///scrGetNearestCostume(player)

var player = argument0;
var enemyList = scrGetEnemyList();
var nearest = noone;
var minDist = 10000;

if (is_array(enemyList)) {

  for (var i = 0; i < array_length_1d(enemyList); ++i) {
    var dist;
    var cur = enemyList[i];

    dist = scrGetDistance(player.x, player.y, cur.x, cur.y);
    if (dist < minDist) {
      nearest = cur;
      minDist = dist;
    }    
  }
}

return nearest;
