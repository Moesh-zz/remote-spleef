function remote_spleef:initalize
scoreboard objectives setdisplay sidebar gameTime
scoreboard players tag Moesh remove Registered
function remote_spleef:player/register
tp Moesh 156 5 212
scoreboard players tag Moesh add Playing

gamerule gameLoopFunction remote_spleef:game