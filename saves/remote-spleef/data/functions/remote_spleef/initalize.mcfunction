# This file is run by the map maker to reinitalize the map.

# These commands move the world spawn point to a single region file. This isn't technical
# requirement, but reduces the amount of region files we need from four to one, saving ~6mbs.
# Also, gamerule spawnRadius 7 sets the spawn area to a single chunk, marked with red in the world.
setworldspawn 136 3 136
gamerule spawnRadius 7

# Set gamerules
gamerule announceAdvancements false
gamerule spectatorsGenerateChunks false

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
scoreboard objectives remove SafetyCountdown

# Add objectives
scoreboard objectives add CONST dummy
	scoreboard players set TWENTY CONST 20
	scoreboard players set SIXTY CONST 60
	scoreboard players set FIVE CONST 5
scoreboard objectives add AffectedBlocks dummy
scoreboard objectives add AffectedItems dummy
scoreboard objectives add forbiddenBlocks dummy
scoreboard objectives add gameTime dummy
	scoreboard players set EveryFiveSeconds gameTime 5
	scoreboard players operation EveryFiveSeconds gameTime *= TWENTY CONST
scoreboard objectives add health health
scoreboard objectives add loggedOff stat.leaveGame
scoreboard objectives add QueryResult dummy
scoreboard objectives add SuccessCount dummy
scoreboard objectives add SafetyCountdown dummy

# Remove all entities, resummon entity markers
kill @e[type=area_effect_cloud]
summon minecraft:area_effect_cloud 96.5 4.0 80.5 {CustomName:"Main", CustomNameVisible:1b, Duration:2147483647}
	stats entity @e[type=area_effect_cloud,name=Main] set SuccessCount @s SuccessCount
	scoreboard players set @e[type=area_effect_cloud,name=Main] SuccessCount 0
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
	stats entity @e[type=area_effect_cloud,name=RoomRed] set AffectedBlocks @s AffectedBlocks
	stats entity @e[type=area_effect_cloud,name=RoomBlue] set AffectedBlocks @s AffectedBlocks
	stats entity @e[type=area_effect_cloud,name=RoomGreen] set AffectedBlocks @s AffectedBlocks
	stats entity @e[type=area_effect_cloud,name=RoomYellow] set AffectedBlocks @s AffectedBlocks
	scoreboard players set @e[type=area_effect_cloud,name=RoomRed] AffectedBlocks 0
	scoreboard players set @e[type=area_effect_cloud,name=RoomBlue] AffectedBlocks 0
	scoreboard players set @e[type=area_effect_cloud,name=RoomGreen] AffectedBlocks 0
	scoreboard players set @e[type=area_effect_cloud,name=RoomYellow] AffectedBlocks 0
	stats entity @e[type=area_effect_cloud,name=RoomRed] set SuccessCount @s SuccessCount
	stats entity @e[type=area_effect_cloud,name=RoomBlue] set SuccessCount @s SuccessCount
	stats entity @e[type=area_effect_cloud,name=RoomGreen] set SuccessCount @s SuccessCount
	stats entity @e[type=area_effect_cloud,name=RoomYellow] set SuccessCount @s SuccessCount
	scoreboard players set @e[type=area_effect_cloud,name=RoomRed] SuccessCount 0
	scoreboard players set @e[type=area_effect_cloud,name=RoomBlue] SuccessCount 0
	scoreboard players set @e[type=area_effect_cloud,name=RoomGreen] SuccessCount 0
	scoreboard players set @e[type=area_effect_cloud,name=RoomYellow] SuccessCount 0
