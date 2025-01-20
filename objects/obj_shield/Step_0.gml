if !obj_player.alive {instance_destroy();}

x = obj_player.x;
y = obj_player.y;

player_controls();
if upKey {shieldUp();}
else if rightKey {shieldRight();}
else if leftKey {shieldLeft();}
else if downKey {shieldDown();}