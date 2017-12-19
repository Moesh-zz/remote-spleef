# Players should only be registered once per map instance.

# Clear all items, effects, and XP
clear @a[tag=!Registered]
effect @a[tag=!Registered] clear
xp -99999 @a[tag=!Registered]
xp -99999L @a[tag=!Registered]

# Register players on required scoreboards
# This effect registers players on the health scoreboard, allowing us to track health easily.
effect @a[tag=!Registered] minecraft:absorption 3 4 true
# Used to poll player inventory
stats entity @a[tag=!Registered] set AffectedItems @s AffectedItems
scoreboard players add @a[tag=!Registered] AffectedItems 0
stats entity @a[tag=!Registered] set AffectedBlocks @s AffectedBlocks
scoreboard players add @a[tag=!Registered] AffectedBlocks 0

# Give needed effects
effect @a[tag=!Registered] minecraft:night_vision 999999 0 true
effect @a[tag=!Registered] minecraft:weakness 999999 100 true
#effect @a[tag=!Registered] minecraft:saturation 999999 100 true

gamemode adventure @a[tag=!Registered] 

tp @a[tag=!Registered] 120 9 170
spawnpoint @a[tag=!Registered] 120 9 170

# Player is now registered.
execute @a[tag=!Registered] ~ ~ ~ scoreboard players tag @s add Registered
