# Players should only be registered once per map instance.

# Clear all items, effects, and XP
clear @a[tag=!Registered]
effect @a[tag=!Registered] clear
xp -99999 @a[tag=!Registered]
xp -99999L @a[tag=!Registered]

# Register players on required scoreboards
	# This effect registers players on the health scoreboard, allowing us to track health easily.
	effect @a[tag=!Registered] minecraft:absorption 3 4 true

	#stats entity @a[tag=!Registered] set AffectedItems @p[c=1] AffectedItems
	#scoreboard players add @a[tag=!Registered] AffectedItems 0

# We have a world spawn point, now let's move the player to the lobby spawn point
tp @a[tag=!Registered] 120 9 170
spawnpoint @a[tag=!Registered] 120 9 170

# Player is now registered.
execute @a[tag=!Registered] ~ ~ ~ scoreboard players tag @s add Registered
