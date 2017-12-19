# When there is NOT at least two players left, end the game.
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[tag=Playing]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount=1] ~ ~ ~ scoreboard players tag @s add EndGame