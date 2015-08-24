/// scrGotoRandomGameRoom()


var nextRoom = choose(rmMain, rmMain2);
global.currentGameRoom = nextRoom;

room_goto(nextRoom);
