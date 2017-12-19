scoreboard players tag @a[tag=!Suffocate] add CannotMove
execute @a ~ ~ ~ detect ~1 ~1 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a ~ ~ ~ detect ~-1 ~1 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a ~ ~ ~ detect ~ ~1 ~1 minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a ~ ~ ~ detect ~ ~1 ~-1 minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a ~ ~ ~ detect ~ ~2 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:air 0 scoreboard players tag @s remove CannotMove
say @a[tag=CannotMove]
execute @a[tag=CannotMove] ~ ~ ~ detect ~ ~1 ~ minecraft:air 0 scoreboard players tag @a[tag=CannotMove] add Suffocate
execute @a[tag=Suffocate] ~ ~ ~ execute @s[tag=CannotMove] ~ ~ ~ fill ~ ~1 ~ ~ ~1 ~ minecraft:wool 15 replace minecraft:air 0
execute @a[tag=Suffocate] ~ ~ ~ scoreboard players tag @s remove CannotMove
scoreboard players tag @a[tag=Suffocate] remove Suffocate