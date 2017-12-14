# Fill forbidden area with dangerous looking particles
particle reddust 87 9.75 151 3.5 0.5 3.5 0.002 75
particle reddust 87 9.75 215 3.5 0.5 3.5 0.002 75
particle reddust 151 9.75 151 3.5 0.5 3.5 0.002 75
particle reddust 151 9.75 215 3.5 0.5 3.5 0.002 75

# These were originally in command and conditional command blocks. We'll use stats to instead 
# check to see if an entity has successfully executed a command. In this case, we to check
# AffectedBlocks to see if players have placed a block in the "forbidden area", a two-block gap
# above the playing area.
execute @e[type=area_effect_cloud,tag=Room] ~ ~-4 ~ fill ~ ~ ~ ~13 ~1 ~13 air 0 remove
execute @e[type=area_effect_cloud,name=RoomRed,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=blue,tag=Playing] add PlacedForbiddenBlock
execute @e[type=area_effect_cloud,name=RoomBlue,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=red,tag=Playing] add PlacedForbiddenBlock
execute @e[type=area_effect_cloud,name=RoomGreen,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=green,tag=Playing] add PlacedForbiddenBlock
execute @e[type=area_effect_cloud,name=RoomYellow,score_AffectedBlocks_min=1] ~ ~ ~ scoreboard players tag @p[team=blue,tag=Playing] add PlacedForbiddenBlock
tellraw @a[tag=PlacedForbiddenBlock] {"translate":"remote_antispleef.cannotPlaceThere","color":"red"}
title @a[tag=PlacedForbiddenBlock] times 0 10 10 
title @a[tag=PlacedForbiddenBlock] subtitle {"translate":"remote_antispleef.cannotPlaceThere","color":"red"}
title @a[tag=PlacedForbiddenBlock] title {"text":""}
scoreboard players tag @a[tag=PlacedForbiddenBlock] add NeedsInstantDamage
scoreboard players tag @a[tag=PlacedForbiddenBlock] remove PlacedForbiddenBlock

# Check to see if player has remained in forbidden area for 10 ticks
execute @e[type=area_effect_cloud,tag=Room] ~ ~-4 ~ execute @a[tag=Playing,dx=13,dy=1,dz=13,tag=!InForbiddenArea] ~ ~ ~ scoreboard players tag @s[tag=!StartForbiddenCountdown] add StartForbiddenCountdown

execute @e[type=area_effect_cloud,tag=Room] ~ ~-4 ~ testfor @a[tag=Playing,dx=13,dy=1,dz=13]
execute @e[type=area_effect_cloud,name=RoomRed,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=red] remove StartForbiddenCountdown
execute @e[type=area_effect_cloud,name=RoomBlue,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=blue] remove StartForbiddenCountdown
execute @e[type=area_effect_cloud,name=RoomGreen,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=green] remove StartForbiddenCountdown
execute @e[type=area_effect_cloud,name=RoomYellow,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=yellow] remove StartForbiddenCountdown
execute @e[type=area_effect_cloud,name=RoomRed,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=red] remove InForbiddenArea
execute @e[type=area_effect_cloud,name=RoomBlue,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=blue] remove InForbiddenArea
execute @e[type=area_effect_cloud,name=RoomGreen,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=green] remove InForbiddenArea
execute @e[type=area_effect_cloud,name=RoomYellow,score_SuccessCount=0] ~ ~ ~ scoreboard players tag @a[team=yellow] remove InForbiddenArea

scoreboard players set @a[tag=StartForbiddenCountdown] SafetyCountdown 11
scoreboard players tag @a[tag=StartForbiddenCountdown] add InForbiddenArea
scoreboard players tag @a[tag=StartForbiddenCountdown] remove StartForbiddenCountdown


# Tick timer down and check to see if player lingered too long (only 10 game ticks)
scoreboard players remove @a[tag=InForbiddenArea,score_SafetyCountdown_min=1] SafetyCountdown 1
tellraw @a[tag=InForbiddenArea,score_SafetyCountdown=0] {"translate":"remote_antispleef.inForbiddenArea","color":"red"}
title @a[tag=InForbiddenArea,score_SafetyCountdown=0] times 0 10 10 
title @a[tag=InForbiddenArea,score_SafetyCountdown=0] subtitle {"translate":"remote_antispleef.inForbiddenArea","color":"red"}
title @a[tag=InForbiddenArea,score_SafetyCountdown=0] title {"text":""}
scoreboard players tag @a[tag=InForbiddenArea,score_SafetyCountdown=0] add NeedsInstantDamage
scoreboard players tag @a[tag=InForbiddenArea,score_SafetyCountdown=0] remove InForbiddenArea


# Damage players who have the NeedsInstantDamage tag
effect @a[tag=NeedsInstantDamage] minecraft:instant_damage 1

scoreboard players tag @a[tag=NeedsInstantDamage] remove NeedsInstantDamage