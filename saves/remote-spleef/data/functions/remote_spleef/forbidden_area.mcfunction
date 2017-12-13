particle reddust 87 9.75 151 3.5 0.5 3.5 0.002 75
particle reddust 87 9.75 215 3.5 0.5 3.5 0.002 75
particle reddust 151 9.75 151 3.5 0.5 3.5 0.002 75
particle reddust 151 9.75 215 3.5 0.5 3.5 0.002 75

# These were originally in command and conditional command blocks. We'll use stats and SuccessCount to instead 
# check to see if an entity has successfully executed a command. Anytime a command is successfully run from
# an entity, they gain a SuccessCount value of at least one. Targetting those entities with a score_SuccessCount_min=1 allows
execute @e[type=area_effect_cloud,tag=Room] ~ ~-4 ~ fill ~ ~ ~ ~13 ~1 ~13 air 0 replace
execute @e[type=area_effect_cloud,name=RoomRed,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=blue,tag=Playing] add PlacedBlockInForbiddenArea
execute @e[type=area_effect_cloud,name=RoomBlue,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=red,tag=Playing] add PlacedBlockInForbiddenArea
execute @e[type=area_effect_cloud,name=RoomGreen,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=green,tag=Playing] add PlacedBlockInForbiddenArea
execute @e[type=area_effect_cloud,name=RoomYellow,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=blue,tag=Playing] add PlacedBlockInForbiddenArea

say @a[tag=PlacedBlockInForbiddenArea] forbidden flag set
scoreboard players tag @a[tag=forbidden] remove forbidden