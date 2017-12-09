# This file is run by the map maker to reinitalize the map.

# These two commands move the world spawn point to a single region file. This isn't technical
# requirement, but reduces the amount of region files we need from four to one, saving ~6mbs.
setworldspawn 136 3 136
gamerule spawnRadius 7

# Remove objectives
scoreboard objectives remove AffectedItems
scoreboard objectives remove health
scoreboard objectives remove loggedOff
scoreboard objectives remove QueryResult
scoreboard objectives remove SuccessCount

scoreboard objectives remove forbidden_blocks
scoreboard objectives remove round_time

# Add objectives
scoreboard objectives add AffectedItems dummy
scoreboard objectives add health health
scoreboard objectives add loggedOff stat.leaveGame
scoreboard objectives add QueryResult dummy
scoreboard objectives add SuccessCount dummy

scoreboard objectives add round_time dummy
scoreboard objectives add forbidden_blocks dummy

# Remove all entities, resummon entity markers
kill @e[type=area_effect_cloud]
summon minecraft:area_effect_cloud 96.5 4.0 80.5 {CustomName:"assemble_area", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 65.5 4.0 104.5 {CustomName:"check_forbidden_blocks", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 65.5 5.0 97.5 {CustomName:"clear_spectator", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 76.5 5.0 97.5 {CustomName:"clear_spectator_fast", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 81.5 4.0 99.5 {CustomName:"items_check", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 81.5 4.0 101.5 {CustomName:"items_cooldownInit", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 81.5 4.0 103.5 {CustomName:"items_cooldownTick", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 81.5 4.0 105.5 {CustomName:"items_give", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 81.5 5.0 97.5 {CustomName:"place_spectator", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 126.5 {CustomName:"remove_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 65.5 4.0 102.5 {CustomName:"setup_forbidden_blocks", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 65.5 5.0 99.5 {CustomName:"setup_timer_scoreboard", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 65.5 5.0 93.5 {CustomName:"start_timer", CustomNameVisible:1b, Duration:2147483647}

summon minecraft:area_effect_cloud 110.5 5.0 113.5 {CustomName:"kill_room1_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 115.5 {CustomName:"kill_room2_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 117.5 {CustomName:"kill_room3_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 110.5 5.0 119.5 {CustomName:"kill_room4_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 117.5 {CustomName:"move_room1_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 117.5 {CustomName:"move_room2_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 119.5 {CustomName:"move_room3_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 119.5 {CustomName:"move_room4_proxy", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 113.5 {CustomName:"room1_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 113.5 {CustomName:"room2_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 97.5 5.0 115.5 {CustomName:"room3_proxies", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 104.5 5.0 115.5 {CustomName:"room4_proxies", CustomNameVisible:1b, Duration:2147483647}

# No need for Main entity yet, everything is done through MULTIPLE AND MANY entities. Will have to first determine what is useful and what is mean to activate functions.
#summon minecraft:area_effect_cloud 80 96 3152 {CustomName:Main, CustomNameVisible:1b, Duration:2147483647}

# Setup status for entity markers
summon minecraft:area_effect_cloud 81.5 13.0 145.5 {CustomName:"forbidden_marker1", CustomNameVisible:1b, Duration:2147483647, Tags:["forbidden_marker"]}
summon minecraft:area_effect_cloud 145.5 13.0 145.5 {CustomName:"forbidden_marker2", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 81.5 13.0 209.5 {CustomName:"forbidden_marker3", CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 145.5 13.0 209.5 {CustomName:"forbidden_marker4", CustomNameVisible:1b, Duration:2147483647}
scoreboard players set room1 forbidden_blocks 0
scoreboard players set room2 forbidden_blocks 0
scoreboard players set room3 forbidden_blocks 0
scoreboard players set room4 forbidden_blocks 0
stats entity @e[type=area_effect_cloud,name=forbidden_marker1] set AffectedBlocks room1 forbidden_blocks
stats entity @e[type=area_effect_cloud,name=forbidden_marker2] set AffectedBlocks room2 forbidden_blocks
stats entity @e[type=area_effect_cloud,name=forbidden_marker3] set AffectedBlocks room3 forbidden_blocks
stats entity @e[type=area_effect_cloud,name=forbidden_marker4] set AffectedBlocks room4 forbidden_blocks
