	# This file is run by the map maker to reinitalize the map.

# These two commands move the world spawn point to a single region file. This isn't technical
# requirement, but reduces the amount of region files we need from four to one, saving ~6mbs.
setworldspawn 136 3 136
gamerule spawnRadius 7

# Remove objectives
scoreboard objectives remove CONST
scoreboard objectives remove AffectedBlocks
scoreboard objectives remove AffectedItems
scoreboard objectives remove forbiddenBlocks
scoreboard objectives remove gameTime
scoreboard objectives remove health
scoreboard objectives remove loggedOff
scoreboard objectives remove QueryResult
scoreboard objectives remove SuccessCount

# Add objectives
scoreboard objectives add CONST dummy
scoreboard objectives add AffectedBlocks dummy
scoreboard objectives add AffectedItems dummy
scoreboard objectives add forbiddenBlocks dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add health health
scoreboard objectives add loggedOff stat.leaveGame
scoreboard objectives add QueryResult dummy
scoreboard objectives add SuccessCount dummy

# Remove all entities, resummon entity markers
kill @e[type=area_effect_cloud]
summon minecraft:area_effect_cloud 96.5 4.0 80.5 {CustomName:"AssemblyArea", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 126.5 {CustomName:"remove_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 113.5 {CustomName:"RoomRed_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 115.5 {CustomName:"kill_RoomBlue_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 117.5 {CustomName:"kill_RoomGreen_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 119.5 {CustomName:"kill_RoomYellow_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 117.5 {CustomName:"RoomRed_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 117.5 {CustomName:"move_RoomBlue_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 119.5 {CustomName:"move_RoomGreen_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 119.5 {CustomName:"move_RoomYellow_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 113.5 {CustomName:"RoomRed_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 113.5 {CustomName:"RoomBlue_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 115.5 {CustomName:"RoomGreen_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 115.5 {CustomName:"RoomYellow_proxies", CustomNameVisible:1b, Duration:2147483647}

# No need for Main entity yet, everything is done through MULTIPLE AND MANY entities. Will have to first determine what is useful and what is mean to activate functions.
#summon minecraft:area_effect_cloud 80 96 3152 {CustomName:Main, CustomNameVisible:1b, Duration:2147483647}

# Setup status for entity markers
summon minecraft:area_effect_cloud 145.5 13.0 145.5 {CustomName:"RoomRed", CustomNameVisible:1b, Duration:2147483647, Tags:["Room"]}
summon minecraft:area_effect_cloud 81.5 13.0 145.5 {CustomName:"RoomBlue", CustomNameVisible:1b, Duration:2147483647, Tags:["Room"]}
summon minecraft:area_effect_cloud 145.5 13.0 209.5 {CustomName:"RoomGreen", CustomNameVisible:1b, Duration:2147483647, Tags:["Room"]}
summon minecraft:area_effect_cloud 81.5 13.0 209.5 {CustomName:"RoomYellow", CustomNameVisible:1b, Duration:2147483647, Tags:["Room"]}
scoreboard players set RoomRed AffectedBlocks 0
scoreboard players set RoomBlue AffectedBlocks 0
scoreboard players set RoomGreen AffectedBlocks 0
scoreboard players set RoomYellow AffectedBlocks 0
stats entity @e[type=area_effect_cloud,name=RoomRed] set AffectedBlocks @s AffectedBlocks
stats entity @e[type=area_effect_cloud,name=RoomBlue] set AffectedBlocks @s AffectedBlocks
stats entity @e[type=area_effect_cloud,name=RoomGreen] set AffectedBlocks @s AffectedBlocks
stats entity @e[type=area_effect_cloud,name=RoomYellow] set AffectedBlocks @s AffectedBlocks
