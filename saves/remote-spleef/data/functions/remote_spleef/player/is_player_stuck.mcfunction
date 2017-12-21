execute @a[tag=Suffocate] ~ ~ ~ detect ~ ~1 ~ minecraft:air 0 scoreboard players tag @s remove Suffocate
execute @a[tag=Playing] ~ ~ ~ scoreboard players tag @s[tag=!Suffocate] add CannotMove
execute @a[tag=CannotMove] ~ ~ ~ detect ~1 ~1 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a[tag=CannotMove] ~ ~ ~ detect ~-1 ~1 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a[tag=CannotMove] ~ ~ ~ detect ~ ~1 ~1 minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a[tag=CannotMove] ~ ~ ~ detect ~ ~1 ~-1 minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a[tag=CannotMove] ~ ~ ~ detect ~ ~2 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a[tag=CannotMove] ~ ~ ~ detect ~ ~-1 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
# If player does not have a block in their head, add one. 
execute @a[tag=CannotMove] ~ ~ ~ detect ~ ~1 ~ minecraft:air 0 scoreboard players tag @a[tag=CannotMove] add Suffocate
execute @a[tag=Suffocate] ~ ~ ~ execute @s[tag=CannotMove] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:wool 15 replace minecraft:air 0
execute @a[tag=Suffocate] ~ ~ ~ scoreboard players tag @s remove CannotMove
# Suffocate tag is removed upon death.