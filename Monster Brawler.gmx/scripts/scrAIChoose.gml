///scrAIChoose(cType)

var cType = argument0;

var r = random(1);

var costumePct = 0.5;
var nearestNode = scrGetNearestNode(self);
var nearestCostume = noone;
var nearestEnemy = noone;

if (cType != noone) {
  costumePct += 0.2;  
}

cList = scrGetCostumeList();

if (cList[0] != noone) {
  if (r < costumePct) {
    nearestCostume = scrGetNearestCostume(node);
  }
}

nearestEnemy = scrGetNearestEnemy(node);

