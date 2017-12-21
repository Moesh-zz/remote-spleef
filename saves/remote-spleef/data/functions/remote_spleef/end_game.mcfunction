say -----------------
say Game is over
say -------------------
scoreboard players tag @a remove Playing
scoreboard players tag @a remove Suffocate
scoreboard players tag @a remove Registered
scoreboard players tag @a add ApplyEffects
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove GameInProgress
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove EndGame