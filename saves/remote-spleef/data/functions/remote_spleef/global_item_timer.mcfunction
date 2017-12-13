
scoreboard players remove EveryFiveSeconds gameTime 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test EveryFiveSeconds gameTime * 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ function remote_spleef:testfor_and_refill
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set EveryFiveSeconds gameTime 5
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players operation EveryFiveSeconds gameTime *= TWENTY CONST