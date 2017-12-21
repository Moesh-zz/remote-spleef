
# Clear spectator
#	execute @e[type=area_effect_cloud,name=spectator_area] ~1 ~ ~ fill ~ ~4 ~ ~13 ~4 ~13 air 0 destroy
#	execute @e[type=area_effect_cloud,name=spectator_area] ~1 ~ ~ fill ~ ~3 ~ ~13 ~3 ~13 air 0 destroy
#	execute @e[type=area_effect_cloud,name=spectator_area] ~1 ~ ~ fill ~ ~2 ~ ~13 ~2 ~13 air 0 destroy
#	execute @e[type=area_effect_cloud,name=spectator_area] ~1 ~ ~ fill ~ ~1 ~ ~13 ~1 ~13 air 0 destroy
#	execute @e[type=area_effect_cloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~ ~13 air 0 destroy
# Clear spectator fast
fill 113 4 177 126 12 190 minecraft:air
# Clear all rooms of blocks
execute @e[type=area_effect_cloud,tag=Room] ~ ~-9 ~ fill ~ ~ ~ ~13 ~6 ~13 minecraft:air

function remote_spleef:spawn_proxies

tp @a[team=red] 158 4 145 45 0
tp @a[team=blue] 81 4 145 -45 0
tp @a[team=green] 158 4 222 135 0
tp @a[team=yellow] 81 4 222 -135 0

scoreboard players tag @a[team=!] add Playing

effect @a[tag=Playng] minecraft:regeneration 0
effect @a[tag=Playng] minecraft:resistance 0
# Make sure players get blocks immediately upon starting the game, instead of 5 seconds after.
scoreboard players set EveryFiveSeconds gameTime 0

scoreboard players tag @e[type=area_effect_cloud,name=Main] add GameInProgress
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove StartGame