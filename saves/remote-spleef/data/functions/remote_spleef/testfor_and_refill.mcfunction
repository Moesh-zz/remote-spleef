execute @a[tag=Playing] ~ ~ ~ clear @s minecraft:wool -1 0
execute @a ~ ~ ~ clear @s minecraft:wool -1 0
scoreboard players tag @a[tag=Playing,score_AffectedItems=0] add Refill
give @a[team=blue,tag=Refill] minecraft:wool 5 11 {CanPlaceOn:["minecraft:stained_hardened_clay", "minecraft:wool"]}
give @a[team=red,tag=Refill] minecraft:wool 5 14 {CanPlaceOn:["minecraft:stained_hardened_clay", "minecraft:wool"]}
give @a[team=yellow,tag=Refill] minecraft:wool 5 4 {CanPlaceOn:["minecraft:stained_hardened_clay", "minecraft:wool"]}
give @a[team=green,tag=Refill] minecraft:wool 5 13 {CanPlaceOn:["minecraft:stained_hardened_clay", "minecraft:wool"]}
scoreboard players tag @a[tag=Refill] remove Refill