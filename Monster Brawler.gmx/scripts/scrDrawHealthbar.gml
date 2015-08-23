///scrDrawHealthbar(player)

var player = argument0;
draw_set_font(fontKaiju48);
with (player) {
  var pct = hp / curMaxHp;
  
  var xPos;
  var yPos;
  var dir;
  draw_set_halign(fa_center);
  ///Remove this after testing
  if (playerNum == 1) {  
    xPos = 90;
    yPos = 30;
    dir = 1;
  } else if (playerNum == 2) {
    xPos = 1200;
    yPos = 30;  
    dir = -1;
  } else if (playerNum == 3) {
    xPos = 90;
    yPos = 690;  
    dir = 1;
  } else if (playerNum == 4) {
    xPos = 1200;
    yPos = 690;  
    dir = -1;
  }

  var barWidth = curMaxHp * dir;
  var barHeight = 30;
  
  var c = c_black;
  draw_rectangle_color(xPos + 5, yPos + 5, xPos + 5 + barWidth, yPos + 5 + barHeight, c, c, c, c, false);
      
  draw_rectangle_color(xPos, yPos, xPos + barWidth, yPos + barHeight, c_white, c_white, c_white, c_white, false);
  
  var c1 = c_green;
  var c2 = c_red;
  c = merge_color(c2, c1, pct);    
  
  draw_text(xPos - (50 * dir), yPos - 10, string(playerNum) + "P");
  draw_rectangle_color(xPos, yPos, xPos + (barWidth * pct), yPos + barHeight, c, c, c, c, false);

}
