scoreboard players add @e[type=area_effect_cloud,name=Main] LoopMusic 0
execute @e[type=area_effect_cloud,name=Main,score_LoopMusic=0] ~ ~ ~ playsound gamemusicloop master @a 120 255 183 99999
scoreboard players set @e[type=area_effect_cloud,name=Main,score_LoopMusic=0] LoopMusic 183
scoreboard players remove @e[type=area_effect_cloud,name=Main,score_LoopMusic_min=1] LoopMusic 1