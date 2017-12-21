# Players should only be registered once per map instance.

# Clear all items, effects, and XP
clear @a[tag=!Registered]
effect @a[tag=!Registered] clear
xp -99999 @a[tag=!Registered]
xp -99999L @a[tag=!Registered]

# Register players on required scoreboards
# This effect registers players on the health scoreboard, allowing us to track health easily.
effect @a[tag=!Registered] minecraft:absorption 3 4 true
# Register player in the food scoreboard
effect @a[tag=!Registered] minecraft:hunger 1 100 true

# Used to poll player inventory
stats entity @a[tag=!Registered] set AffectedItems @s AffectedItems
scoreboard players add @a[tag=!Registered] AffectedItems 0
stats entity @a[tag=!Registered] set AffectedBlocks @s AffectedBlocks
scoreboard players add @a[tag=!Registered] AffectedBlocks 0

scoreboard players tag @a[tag=!Registered] add ApplyEffects

gamemode adventure @a[tag=!Registered] 

tp @a[tag=!Registered] 120 9 170 0 0
spawnpoint @a[tag=!Registered] 120 9 170

# Player is now registered.
execute @a[tag=!Registered] ~ ~ ~ scoreboard players tag @s add Registered
