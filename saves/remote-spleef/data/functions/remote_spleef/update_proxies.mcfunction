# Update and move proxies
execute @e[type=area_effect_cloud,name=RoomRed] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=armor_stand,name=RoomRed_Proxy] ~-32 ~ ~32 ~ ~
execute @e[type=area_effect_cloud,name=RoomBlue] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=armor_stand,name=RoomBlue_Proxy] ~32 ~ ~32 ~ ~
execute @e[type=area_effect_cloud,name=RoomGreen] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=armor_stand,name=RoomGreen_Proxy] ~-32 ~ ~-32 ~ ~
execute @e[type=area_effect_cloud,name=RoomYellow] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=armor_stand,name=RoomYellow_Proxy] ~32 ~ ~-32 ~ ~

# Spawn particles at players head in all other rooms
# Spawns red particles [35+(14*4096)]
execute @e[type=area_effect_cloud,name=RoomRed] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~-64 ~ ~ particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 57379
execute @e[type=area_effect_cloud,name=RoomRed] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 57379
execute @e[type=area_effect_cloud,name=RoomRed] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~-64 ~ ~64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 57379
# Spawns blue particles [35+(11*4096)]
execute @e[type=area_effect_cloud,name=RoomBlue] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~64 ~ ~ particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 45091
execute @e[type=area_effect_cloud,name=RoomBlue] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~64 ~ ~64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 45091
execute @e[type=area_effect_cloud,name=RoomBlue] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 45091
# Spawns green particles [35+(5*4096)]
execute @e[type=area_effect_cloud,name=RoomGreen] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~-64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 20515
execute @e[type=area_effect_cloud,name=RoomGreen] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~-64 ~ ~-64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 20515
execute @e[type=area_effect_cloud,name=RoomGreen] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~-64 ~ ~ particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 20515
# Spawns yellow particles [35+(4e*4096)]
execute @e[type=area_effect_cloud,name=RoomYellow] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~64 ~ ~-64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 16419
execute @e[type=area_effect_cloud,name=RoomYellow] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~ ~ ~-64 particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 16419
execute @e[type=area_effect_cloud,name=RoomYellow] ~ ~-9 ~ execute @p[dx=13,dy=7,dz=13] ~64 ~ ~ particle blockcrack ~ ~1.62 ~ 0 0 0 0 1 force @a 16419