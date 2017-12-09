particle reddust 81 9 145 3.5 0.5 3.5 0.002 75

execute @e[type=area_effect_cloud,name=forbidden_room1] ~ ~ ~ execute @e[type=area_effect_cloud,tag=forbidden_marker] ~ ~-4 ~ fill ~ ~ ~ ~13 ~1 ~13 air 0 replace
execute @e[type=area_effect_cloud,name=forbidden_room1] ~ ~ ~ scoreboard players test room1 forbidden_blocks 1 *

execute @e[type=area_effect_cloud,name=forbidden_room2] ~ ~ ~ scoreboard players test room2 forbidden_blocks 1 *
execute @e[type=area_effect_cloud,name=forbidden_room2] ~ ~ ~ scoreboard players tag @p[team=red,tag=ingame] add forbidden

execute @e[type=area_effect_cloud,name=forbidden_room3] ~ ~ ~ scoreboard players test room3 forbidden_blocks 1 *
execute @e[type=area_effect_cloud,name=forbidden_room3] ~ ~ ~ scoreboard players tag @p[team=yellow,tag=ingame] add forbidden

execute @e[type=area_effect_cloud,name=forbidden_room4] ~ ~ ~ scoreboard players test room4 forbidden_blocks 1 *
execute @e[type=area_effect_cloud,name=forbidden_room4] ~ ~ ~ scoreboard players tag @p[team=green,tag=ingame] add forbidden

say @e[tag=forbidden] forbidden flag set
scoreboard players tag @a[tag=forbidden] remove forbidden