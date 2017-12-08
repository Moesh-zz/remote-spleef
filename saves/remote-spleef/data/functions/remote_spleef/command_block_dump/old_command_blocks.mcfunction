------------------------------

scoreboard objectives add forbidden_blocks dummy

scoreboard players set room1 forbidden_blocks 0

scoreboard players set room2 forbidden_blocks 0

scoreboard players set room3 forbidden_blocks 0

scoreboard players set room4 forbidden_blocks 0

stats entity @e[type=AreaEffectCloud,name=forbidden_marker1] set AffectedBlocks room1 forbidden_blocks

stats entity @e[type=AreaEffectCloud,name=forbidden_marker2] set AffectedBlocks room2 forbidden_blocks

stats entity @e[type=AreaEffectCloud,name=forbidden_marker3] set AffectedBlocks room3 forbidden_blocks

stats entity @e[type=AreaEffectCloud,name=forbidden_marker4] set AffectedBlocks room4 forbidden_blocks

------------------------------

execute @e[type=AreaEffectCloud,tag=forbidden_marker] ~ ~-4 ~ fill ~ ~ ~ ~13 ~1 ~13 air 0 replace

scoreboard players test room1 forbidden_blocks 1 *

scoreboard players tag @p[team=blue,tag=ingame] add forbidden

execute @e[type=AreaEffectCloud,tag=forbidden_marker] ~7 ~-3 ~7 particle reddust ~ ~ ~ 3.5 0.5 3.5 0.002 75

------------------------------

execute @e[type=AreaEffectCloud,name=assemble_area] ~ ~ ~ fill ~1 ~1 ~1 ~14 ~5 ~14 structure_void 0 replace air

execute @e[type=AreaEffectCloud,name=assemble_area] ~1 ~-1 ~ setblock ~ ~ ~ stone

execute @e[type=AreaEffectCloud,name=assemble_area] ~1 ~-1 ~ setblock ~ ~ ~ redstone_block

------------------------------

execute @e[type=AreaEffectCloud,name=room1] ~1 ~10 ~ setblock ~ ~ ~ stone

execute @e[type=AreaEffectCloud,name=room1] ~1 ~10 ~ setblock ~ ~ ~ redstone_block

------------------------------

execute @e[type=AreaEffectCloud,name=room2] ~1 ~10 ~ setblock ~ ~ ~ stone

execute @e[type=AreaEffectCloud,name=room2] ~1 ~10 ~ setblock ~ ~ ~ redstone_block

------------------------------

execute @e[type=AreaEffectCloud,name=room3] ~1 ~10 ~ setblock ~ ~ ~ stone

execute @e[type=AreaEffectCloud,name=room3] ~1 ~10 ~ setblock ~ ~ ~ redstone_block

------------------------------

execute @e[type=AreaEffectCloud,name=room4] ~1 ~10 ~ setblock ~ ~ ~ stone

execute @e[type=AreaEffectCloud,name=room4] ~1 ~10 ~ setblock ~ ~ ~ redstone_block

------------------------------

execute @e[type=AreaEffectCloud,tag=room] ~1 ~10 ~ setblock ~ ~ ~ stone

execute @e[type=AreaEffectCloud,tag=room] ~1 ~10 ~ setblock ~ ~ ~ redstone_block

scoreboard players set round_timer round_time 600

summon AreaEffectCloud ~-1 ~1 ~2 {Age:-20,Tags:[0:"ideDelayCloud"]}

summon AreaEffectCloud ~1 ~1 ~-1 {Age:-2,Tags:[0:"ideDelayCloud"]}

summon AreaEffectCloud ~2 ~1 ~-2 {Age:-2,Tags:[0:"ideDelayCloud"]}

scoreboard players test round_timer round_time 2 *

summon AreaEffectCloud ~-2 ~1 ~ {Age:-20,Tags:[0:"ideDelayCloud"]}

------------------------------

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~4 ~ ~13 ~4 ~13 air 0 destroy

summon AreaEffectCloud ~1 ~1 ~ {Age:-5,Tags:[0:"ideDelayCloud"]}

------------------------------

scoreboard objectives add round_time dummy

scoreboard players set round_timer_divider round_time 60

scoreboard players set round_timer_one round_time 1

scoreboard players set round_timer_message round_time 0

------------------------------

scoreboard players operation round_minutes round_time = round_timer round_time

scoreboard players operation round_minutes round_time = round_timer_divider round_time

scoreboard players operation round_seconds round_time = round_timer round_time

scoreboard players operation round_seconds round_time %= round_timer_divider round_time

title @a times 0 30 0

scoreboard players test round_seconds round_time 10 59

title @a subtitle [------------------------------,{"text":"- "},{"score":{"name":"round_minutes","objective":"round_time"}},{"text":":"},{"score":{"name":"round_seconds","objective":"round_time"}},{"text":" -"}]

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~3 ~ ~13 ~3 ~13 air 0 destroy

summon AreaEffectCloud ~1 ~1 ~ {Age:-5,Tags:[0:"ideDelayCloud"]}

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~2 ~ ~13 ~2 ~13 air 0 destroy

summon AreaEffectCloud ~1 ~1 ~ {Age:-5,Tags:[0:"ideDelayCloud"]}

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~1 ~ ~13 ~1 ~13 air 0 destroy

summon AreaEffectCloud ~1 ~1 ~ {Age:-5,Tags:[0:"ideDelayCloud"]}

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~ ~13 air 0 destroy

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~4 ~13 air 0 replace

------------------------------

scoreboard players add @a[tag=!items_cooldown] items 0

execute @a[tag=!items_cooldown] ~ ~ ~ execute @a[tag=ingame] ~ ~ ~ stats entity @p set AffectedItems @p items

execute @a[tag=!items_cooldown] ~ ~ ~ execute @a[tag=ingame] ~ ~ ~ clear @p minecraft:wool -1 0

stats entity @a[tag=!items_cooldown,score_items=0] clear AffectedItems

scoreboard players tag @a[tag=!items_cooldown,score_items=0] add items_cooldownInit

scoreboard players tag @a[tag=!items_cooldown,score_items=0] add items_cooldown

execute @a[tag=items_cooldownInit] ~ ~ ~ scoreboard players tag @e[type=AreaEffectCloud,name=items_cooldownInit] add run

------------------------------

scoreboard players set @a[tag=items_cooldownInit] items_cooldown 0

scoreboard players operation @a[tag=items_cooldownInit] items_cooldown = items_cooldown vars

scoreboard players operation @a[tag=items_cooldownInit] items_cooldown *= twenty const

scoreboard players tag @a[tag=items_cooldownInit] add items_cooldownTick

scoreboard players tag @a[tag=items_cooldownInit] remove items_cooldownInit

testfor @a[tag=items_cooldownTick]

testfor @a[tag=items_give]

execute @e[type=AreaEffectCloud,tag=room] ~1 ~1 ~1 clone ~ ~ ~ ~13 ~4 ~13 -31 5 -47 masked

execute @e[type=AreaEffectCloud,name=room1] ~1 ~1 ~1 clone ~ ~ ~ ~13 ~4 ~13 -31 5 -47 filtered normal minecraft:wool 11

execute @e[type=AreaEffectCloud,name=room2] ~1 ~1 ~1 clone ~ ~ ~ ~13 ~4 ~13 -31 5 -47 filtered normal minecraft:wool 14

execute @e[type=AreaEffectCloud,name=room3] ~1 ~1 ~1 clone ~ ~ ~ ~13 ~4 ~13 -31 5 -47 filtered normal minecraft:wool 4

execute @e[type=AreaEffectCloud,name=room4] ~1 ~1 ~1 clone ~ ~ ~ ~13 ~4 ~13 -31 5 -47 filtered normal minecraft:wool 13

------------------------------

execute @e[type=AreaEffectCloud,name=spectator_area] ~ ~-1 ~-1 setblock ~ ~ ~ minecraft:stone

execute @e[type=AreaEffectCloud,name=spectator_area] ~ ~-1 ~-1 setblock ~ ~ ~ minecraft:redstone_block

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~4 ~13 stained_glass 14 replace wool 14

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~4 ~13 stained_glass 11 replace wool 11

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~4 ~13 stained_glass 4 replace wool 4

execute @e[type=AreaEffectCloud,name=spectator_area] ~1 ~ ~ fill ~ ~ ~ ~13 ~4 ~13 stained_glass 13 replace wool 13

------------------------------

------------------------------

execute @e[type=AreaEffectCloud,name=assemble_area] ~1 ~1 ~1 fill ~ ~ ~ ~13 ~4 ~13 minecraft:air

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room1] ~2 ~10 ~3 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:5631}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5631}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5631}}},{id:"leather_helmet",Count:1b,tag:{display:{color:5631}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room1_proxy"],CustomName:"room1proxy1"}

execute @e[type=AreaEffectCloud,c=1,name=room1] ~2 ~10 ~5 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:5631}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5631}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5631}}},{id:"leather_helmet",Count:1b,tag:{display:{color:5631}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room1_proxy"],CustomName:"room1proxy2"}

execute @e[type=AreaEffectCloud,c=1,name=room1] ~2 ~10 ~7 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:5631}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5631}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5631}}},{id:"leather_helmet",Count:1b,tag:{display:{color:5631}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room1_proxy"],CustomName:"room1proxy3"}

execute @e[type=AreaEffectCloud,c=1,name=room1] ~2 ~10 ~9 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:5631}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5631}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5631}}},{id:"leather_helmet",Count:1b,tag:{display:{color:5631}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room1_proxy"],CustomName:"room1spectator"}

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room3] ~2 ~10 ~3 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13746442}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13746442}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13746442}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13746442}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room3_proxy"],CustomName:"room3proxy1"}

execute @e[type=AreaEffectCloud,c=1,name=room3] ~2 ~10 ~5 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13746442}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13746442}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13746442}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13746442}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room3_proxy"],CustomName:"room3proxy2"}

execute @e[type=AreaEffectCloud,c=1,name=room3] ~2 ~10 ~7 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13746442}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13746442}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13746442}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13746442}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room3_proxy"],CustomName:"room3proxy3"}

execute @e[type=AreaEffectCloud,c=1,name=room3] ~2 ~10 ~9 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13746442}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13746442}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13746442}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13746442}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room3_proxy"],CustomName:"room3spectator"}

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room1] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room1proxy1] ~64 ~ ~ ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room1] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room1proxy2] ~ ~ ~64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room1] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room1proxy3] ~64 ~ ~64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room1] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room1spectator] ~32 ~ ~32 ~ ~

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room3] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room3proxy1] ~ ~ ~-64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room3] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room3proxy2] ~64 ~ ~-64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room3] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room3proxy3] ~64 ~ ~ ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room3] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room3spectator] ~32 ~ ~-32 ~ ~

------------------------------

kill @e[tag=proxy,type=ArmorStand]

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room2] ~2 ~10 ~3 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13047832}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13047832}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13047832}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13047832}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room2_proxy"],CustomName:"room2proxy1"}

execute @e[type=AreaEffectCloud,c=1,name=room2] ~2 ~10 ~5 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13047832}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13047832}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13047832}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13047832}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room2_proxy"],CustomName:"room2proxy2"}

execute @e[type=AreaEffectCloud,c=1,name=room2] ~2 ~10 ~7 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13047832}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13047832}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13047832}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13047832}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room2_proxy"],CustomName:"room2proxy3"}

execute @e[type=AreaEffectCloud,c=1,name=room2] ~2 ~10 ~9 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13047832}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13047832}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:13047832}}},{id:"leather_helmet",Count:1b,tag:{display:{color:13047832}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room2_proxy"],CustomName:"room2spectator"}

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room4] ~2 ~10 ~3 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:898322}}},{id:"leather_leggings",Count:1b,tag:{display:{color:898322}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:898322}}},{id:"leather_helmet",Count:1b,tag:{display:{color:898322}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room4_proxy"],CustomName:"room4proxy1"}

execute @e[type=AreaEffectCloud,c=1,name=room4] ~2 ~10 ~5 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:898322}}},{id:"leather_leggings",Count:1b,tag:{display:{color:898322}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:898322}}},{id:"leather_helmet",Count:1b,tag:{display:{color:898322}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room4_proxy"],CustomName:"room4proxy2"}

execute @e[type=AreaEffectCloud,c=1,name=room4] ~2 ~10 ~7 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:898322}}},{id:"leather_leggings",Count:1b,tag:{display:{color:898322}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:898322}}},{id:"leather_helmet",Count:1b,tag:{display:{color:898322}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room4_proxy"],CustomName:"room4proxy3"}

execute @e[type=AreaEffectCloud,c=1,name=room4] ~2 ~10 ~9 summon ArmorStand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:898322}}},{id:"leather_leggings",Count:1b,tag:{display:{color:898322}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:898322}}},{id:"leather_helmet",Count:1b,tag:{display:{color:898322}}}],HandItems:[{},{}],Pose:{LeftLeg:[4f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[341f,0f,358f],RightArm:[346f,0f,2f]},Marker:1b,DisabledSlots:2039583,Tags:["proxy","room4_proxy"],CustomName:"room4spectator"}

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room2] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room2proxy1] ~-64 ~ ~ ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room2] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room2proxy2] ~-64 ~ ~64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room2] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room2proxy3] ~ ~ ~64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room2] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room2spectator] ~-32 ~ ~32 ~ ~

------------------------------

execute @e[type=AreaEffectCloud,c=1,name=room4] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room4proxy1] ~-64 ~ ~-64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room4] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room4proxy2] ~ ~ ~-64 ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room4] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room4proxy3] ~-64 ~ ~ ~ ~

execute @e[type=AreaEffectCloud,c=1,name=room4] ~1 ~1 ~1 execute @p[dx=13,dy=7,dz=13] ~ ~ ~ teleport @e[type=ArmorStand,c=1,name=room4spectator] ~-32 ~ ~-32 ~ ~

kill @e[tag=room1_proxy,type=ArmorStand]

kill @e[tag=room2_proxy,type=ArmorStand]

kill @e[tag=room3_proxy,type=ArmorStand]

kill @e[tag=room4_proxy,type=ArmorStand]

scoreboard players test round_timer round_time 1 *

scoreboard players operation round_timer round_time -= round_timer_one round_time

scoreboard players test room2 forbidden_blocks 1 *

scoreboard players tag @p[team=red,tag=ingame] add forbidden

scoreboard players test round_timer round_time 0 0

say Time's UP !!!

scoreboard players test room3 forbidden_blocks 1 *

scoreboard players tag @p[team=yellow,tag=ingame] add forbidden

scoreboard players test room4 forbidden_blocks 1 *

scoreboard players tag @p[team=green,tag=ingame] add forbidden

say @e[tag=forbidden] forbidden flag set

scoreboard players tag @a[tag=forbidden] remove forbidden

scoreboard players test round_seconds round_time 0 9

title @a subtitle [------------------------------,{"text":"- "},{"score":{"name":"round_minutes","objective":"round_time"}},{"text":":0"},{"score":{"name":"round_seconds","objective":"round_time"}},{"text":" -"}]

title @a title {"text":"Message 2"}

scoreboard players test round_timer_message round_time 2 2

scoreboard players test round_timer round_time 1 *

title @a title {"text":"Message 1"}

scoreboard players test round_timer_message round_time 1 1

scoreboard players test round_timer round_time 1 *

title @a title {"text":------------------------------}

scoreboard players test round_timer_message round_time 0 0

scoreboard players test round_timer round_time 1 *

scoreboard players remove @a[score_items_cooldown_min=1] items_cooldown 1

scoreboard players operation @a[score_items_cooldown=0] items_count = items_count vars

scoreboard players tag @a[score_items_cooldown=0] add items_give

scoreboard players tag @a[score_items_cooldown=0] remove items_cooldownTick

give @a[team=blue,tag=items_give,score_items_count_min=1] minecraft:wool 1 11

give @a[team=red,tag=items_give,score_items_count_min=1] minecraft:wool 1 14

give @a[team=yellow,tag=items_give,score_items_count_min=1] minecraft:wool 1 4

give @a[team=green,tag=items_give,score_items_count_min=1] minecraft:wool 1 13

scoreboard players remove @a[tag=items_give,score_items_count_min=1] items_count 1

scoreboard players tag @a[tag=items_give,score_items_count=0] remove items_cooldown

scoreboard players tag @a[tag=items_give,score_items_count=0] remove items_give