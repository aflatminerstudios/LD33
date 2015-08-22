///scrRoomPositionToGrid(xPos, yPos)

var xPos = argument0;
var yPos = argument0;

var tileSize = 40;

var gridPos;
gridPos[0] = floor(xPos / tileSize);
gridPos[1] = floor(yPos / tileSize);

return gridPos;



