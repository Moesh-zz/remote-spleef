""

scoreboard players add @e[type=AreaEffectCloud,tag=loop] ide20hz 0

execute @e[type=AreaEffectCloud,tag=loop] ~ ~ ~ stats entity @e[type=AreaEffectCloud,c=1] set SuccessCount @e[type=AreaEffectCloud,c=1] ide20hz

execute @e[type=AreaEffectCloud,tag=loop] ~ ~ ~ testforblock ~ ~-1 ~ minecraft:repeating_command_block -1

scoreboard players tag @e[type=AreaEffectCloud,c=1,score_ide20hz_min=1] add ide20hz

execute @e[type=AreaEffectCloud,tag=ide20hz] ~ ~ ~ scoreboard players tag @e[type=AreaEffectCloud,c=1,tag=!run] add run

execute @e[type=AreaEffectCloud,tag=loop] ~ ~ ~ stats entity @e[type=AreaEffectCloud,c=1] clear SuccessCount

scoreboard players reset @e[type=AreaEffectCloud,tag=ide20hz] ide20hz

scoreboard players tag @e[type=AreaEffectCloud,tag=ide20hz] remove loop

scoreboard players tag @e[type=AreaEffectCloud,tag=loop] add run {Age:-1}

scoreboard players tag @e[type=AreaEffectCloud,tag=ideDelayCloud] add run {Age:-1}

scoreboard players tag @e[type=AreaEffectCloud,tag=end] remove run 

execute @e[type=AreaEffectCloud,tag=run] ~ ~ ~ blockdata ~ ~-1 ~ {auto:1b}

execute @e[type=AreaEffectCloud,tag=!ide20hz] ~ ~ ~ scoreboard players tag @e[type=AreaEffectCloud,c=1,tag=run] add end

scoreboard players tag @e[type=AreaEffectCloud,tag=run] remove run

execute @e[type=AreaEffectCloud,tag=end] ~ ~ ~ blockdata ~ ~-1 ~ {auto:0b}

scoreboard players tag @e[type=AreaEffectCloud,tag=end] remove end

testfor @a[m=1,rxm=90,rx=90,tag=!ideMenuOpen]

tellraw @a[m=1,rxm=90,rx=90,tag=!ideMenuOpen] {"translate":"%s: %s (%s), Clouds (%s), %s, %s (%s), %s, %s (%s)","color": "green","with": [{"text": "IDE","color": "dark_green","hoverEvent": {"action": "show_text","value": "Ideal Development Environment\nby Moesh (http:moesh.ca)"},"clickEvent": {"action": "open_url","value": "http:moesh.ca"}},{"text": "TP","color": "white","hoverEvent": {"action": "show_text","value": "Teleport: Set Work Station"},"clickEvent": {"action": "run_command","value": "scoreboard players tag @p[m=1,c=1] add ide_setStation"}},{"translate": "%s%s%s","color": "white","with": [{"text": "D","hoverEvent": {"action": "show_text","value": "Teleport: Command Blocks"},"clickEvent": {"action": "run_command","value": "scoreboard players tag @p[m=1,c=1] add ide_tpDev"}},{"text": "M","hoverEvent": {"action": "show_text","value": "Teleport: Game"},"clickEvent": {"action": "run_command","value": "scoreboard players tag @p[m=1,c=1] add ide_tpGame"}},{"text": "W","hoverEvent": {"action": "show_text","value": "Teleport: Work Station"},"clickEvent": {"action": "run_command","value": "scoreboard players tag @p[m=1,c=1] add ide_tpStation"}}]},{"translate": "%s%s","color": "white","with": [{"text": "H","hoverEvent": {"action": "show_text","value": "AreaEffectCloud: Hide"},"clickEvent": {"action": "run_command","value": "entitydata @e[type=ArmorStand,x=-96,y=0,z=-96,dx=191,dy=63,dz=191] {CustomNameVisible:0b}"}},{"text": "S","hoverEvent": {"action": "show_text","value": "AreaEffectCloud: Show"},"clickEvent": {"action": "run_command","value": "entitydata @e[type=ArmorStand,x=-96,y=0,z=-96,dx=191,dy=63,dz=191] {CustomNameVisible:1b}"}}]},{"text": "Tools","color": "white","hoverEvent": {"action": "show_text","value": "Tools: Get"},"clickEvent": {"action": "run_command","value": "scoreboard players tag @p[m=1,c=1] add ideTools"}},{"text": "Clear","color": "white","hoverEvent": {"action": "show_text","value": "Tools: Clear"},"clickEvent": {"action": "run_command","value": "clear"}},{"text": "fx","color": "white","hoverEvent": {"action": "show_text","value": "Clear all effects"},"clickEvent": {"action": "run_command","value": "effect @p clear"}},{"translate": "NV","color": "white","hoverEvent": {"action": "show_text","value": "Apply Night Vision"},"clickEvent": {"action": "run_command","value": "effect @p minecraft:night_vision 999999 0 true"}},{"text": "Sgst","hoverEvent": {"action": "show_text","value": "Populate text field with commands"}},{"translate": "%s%s%s%s","color": "white","with": [{"text":"S","hoverEvent": {"action": "show_text","value": "Change or clear sidebar"},"clickEvent": {"action": "suggest_command","value": "scoreboard objectives setdisplay sidebar "}},{"text":"R","hoverEvent": {"action": "show_text","value": "Remove AreaEffectCloud"},"clickEvent": {"action": "suggest_command","value": "kill @e[type=AreaEffectCloud,dx=0,dy=0,dz=0]"}},{"text":"A","hoverEvent": {"action": "show_text","value": "Tag AreaEffectCloud"},"clickEvent": {"action": "suggest_command","value": "scoreboard players tag @e[type=AreaEffectCloud,dx=0,dy=0,dz=0] "}},{"text":"L","hoverEvent": {"action": "show_text","value": "List AreaEffectCloud list"},"clickEvent": {"action": "suggest_command","value": "scoreboard players tag @e[type=AreaEffectCloud,dx=0,dy=0,dz=0] list"}}]}]}

""

execute @e[type=AreaEffectCloud,name=ideFuncCloud] ~ ~ ~ blockdata ~ ~ ~ {auto:0b,Command:"entitydata @e[type=AreaEffectCloud,name=CHANGEME,c=1] {Duration:2147483647,CustomNameVisible:1,CustomName:\"\"}"}

execute @e[type=AreaEffectCloud,name=ideFuncCloud] ~ ~ ~ entitydata @e[type=AreaEffectCloud,name=ideFuncCloud,c=1] {CustomName:"CHANGEME"}

execute @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=!CHANGEME] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:air 0 replace minecraft:command_block

execute @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=!CHANGEME] ~ ~ ~ scoreboard players tag @e[type=AreaEffectCloud,name=!CHANGEME,c=1] add clearSuccessCount

execute @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=!CHANGEME] ~ ~ ~ scoreboard players tag @e[type=AreaEffectCloud,name=!CHANGEME,c=1] remove ideRemoveBlock

execute @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=CHANGEME] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 entitydata @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=CHANGEME,c=1] {Duration:0,Age:0}

scoreboard players add @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=CHANGEME] ideBlockChanged 0

stats entity @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=CHANGEME] set SuccessCount @e[type=AreaEffectCloud,c=1] ideBlockChanged

execute @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=CHANGEME] ~ ~ ~ testforblock ~ ~ ~ minecraft:command_block -1 {auto:0b,Command:"entitydata @e[type=AreaEffectCloud,name=CHANGEME,c=1] {Duration:2147483647,CustomNameVisible:1,CustomName:\"\"}"}

execute @e[type=AreaEffectCloud,tag=ideRemoveBlock,name=CHANGEME,score_ideBlockChanged=0] ~ ~ ~ blockdata ~ ~ ~ {auto:1b}

stats entity @e[type=AreaEffectCloud,tag=clearSuccessCount] clear SuccessCount

scoreboard players reset @e[type=AreaEffectCloud,tag=clearSuccessCount] ideBlockChanged

scoreboard players tag @e[type=AreaEffectCloud,tag=clearSuccessCount] remove clearSuccessCount

testfor @a[m=1,tag=ideTools]

testfor @a[m=1,tag=ide_tpDev]

testfor @e[type=AreaEffectCloud,name=idePlace_delayCloud]

""

""

""

testfor @a[m=1,rx=89,tag=ideMenuOpen]

scoreboard players tag @a[m=1,rx=89,tag=ideMenuOpen] remove ideMenuOpen

testfor @a[m=1,tag=ide_tpGame]

""

testfor @a[m=1,tag=ide_tpStation]

""

tp @a[m=1,tag=ide_tpStation] 0 3 0

scoreboard players tag @a[m=1,tag=ide_tpStation] remove id_tpStation

scoreboard players tag @a[m=1,rxm=90,rx=90,tag=!ideMenuOpen] add ideMenuOpen

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.0 minecraft:command_block

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.1 minecraft:chain_command_block

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.2 minecraft:repeating_command_block

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.3 minecraft:redstone_block

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.4 minecraft:structure_block

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.5 minecraft:command_block 1 0 {display:{Name:"Place ideFuncCloud"},BlockEntityTag:{auto:1,Command:"summon AreaEffectCloud ~ ~-0.5 ~ {Duration:2147483647,Tags:[\"ideRemoveBlock\"],CustomNameVisible:1,CustomName:\"ideFuncCloud\"}"}}

replaceitem entity @a[m=1,tag=ideTools] slot.hotbar.6 minecraft:command_block 1 0 {display:{Name:"Place ideDelayCloud"},BlockEntityTag:{auto:1,Command:"summon AreaEffectCloud ~ ~-0.5 ~ {Duration:2147483647,CustomNameVisible:1,CustomName:\"idePlace_delayCloud\"}"}}

scoreboard players tag @a[m=1,tag=ideTools] remove ideTools

tp @a[m=1,tag=ide_tpDev] 0 3 0

scoreboard players tag @a[m=1,tag=ide_tpDev] remove id_tpDev

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ testforblock ~ ~ ~ minecraft:command_block 0

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ setblock ~ ~ ~ minecraft:chain_command_block 0

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ blockdata ~ ~ ~ {Command:"summon AreaEffectCloud ~ ~ ~ {Tags:[0:\"ideDelayCloud\"],Age:-20}"}

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ testforblock ~ ~ ~ minecraft:command_block 1

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ setblock ~ ~ ~ minecraft:chain_command_block 1

tp @a[m=1,tag=ide_tpGame] 0 114 1000

scoreboard players tag @a[m=1,tag=ide_tpGame] remove ide_tpGame

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ blockdata ~ ~ ~ {Command:"summon AreaEffectCloud ~ ~2 ~ {Tags:[0:\"ideDelayCloud\"],Age:-20}"}

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ testforblock ~ ~ ~ minecraft:command_block 2

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ setblock ~ ~ ~ minecraft:chain_command_block 2

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ blockdata ~ ~ ~ {Command:"summon AreaEffectCloud ~ ~1 ~-1 {Tags:[0:\"ideDelayCloud\"],Age:-20}"}

""

""

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ testforblock ~ ~ ~ minecraft:command_block 3

execute @e[type=AreaEffectCloud,name=idePlace_delayCloud] ~ ~ ~ setblock ~ ~ ~ minecraft:chain_command_block 3