/// scrGotoRandomGameRoom()

var nextRoom = choose(rmMain, rmMainOld);

nextRoom = rmMain;

global.currentGameRoom = nextRoom;

room_goto(nextRoom);
