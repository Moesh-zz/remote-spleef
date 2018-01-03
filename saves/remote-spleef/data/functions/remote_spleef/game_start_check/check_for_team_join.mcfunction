execute @a[x=134,y=10,z=166,dx=3,dy=5,dz=3] ~ ~ ~ scoreboard players tag @s add JoinRed
execute @a[x=102,y=10,z=166,dx=3,dy=5,dz=3] ~ ~ ~ scoreboard players tag @s add JoinBlue
execute @a[x=134,y=10,z=198,dx=3,dy=5,dz=3] ~ ~ ~ scoreboard players tag @s add JoinGreen
execute @a[x=102,y=10,z=198,dx=3,dy=5,dz=3] ~ ~ ~ scoreboard players tag @s add JoinYellow

# If player on a team is missing a tag, remove them from team
scoreboard players tag @a[team=red,tag=!JoinRed] add LeaveRed
scoreboard players tag @a[team=blue,tag=!JoinBlue] add LeaveBlue
scoreboard players tag @a[team=green,tag=!JoinGreen] add LeaveGreen
scoreboard players tag @a[team=yellow,tag=!JoinYellow] add LeaveYellow

# Is an online player already present and on a team? Cancel team join
execute @a[team=red] ~ ~ ~ scoreboard players tag @a[team=!red,tag=JoinRed] add TeleportAway
execute @a[team=blue] ~ ~ ~ scoreboard players tag @a[team=!blue,tag=JoinBlue] add TeleportAway
execute @a[team=green] ~ ~ ~ scoreboard players tag @a[team=!green,tag=JoinGreen] add TeleportAway
execute @a[team=yellow] ~ ~ ~ scoreboard players tag @a[team=!yellow,tag=JoinYellow] add TeleportAway
execute @a[team=red] ~ ~ ~ scoreboard players tag @a[team=!red,tag=JoinRed] remove JoinRed
execute @a[team=blue] ~ ~ ~ scoreboard players tag @a[team=!blue,tag=JoinBlue] remove JoinBlue
execute @a[team=green] ~ ~ ~ scoreboard players tag @a[team=!green,tag=JoinGreen] remove JoinGreen
execute @a[team=yellow] ~ ~ ~ scoreboard players tag @a[team=!yellow,tag=JoinYellow] remove JoinYellow
tp @a[tag=TeleportAway] 120 9 170 0 0
scoreboard players tag @a[tag=TeleportAway] remove TeleportAway

# Player can join the team without issue, join team
function remote_spleef:game_start_check/join_red if @a[tag=JoinRed]
function remote_spleef:game_start_check/join_blue if @a[tag=JoinBlue]
function remote_spleef:game_start_check/join_green if @a[tag=JoinGreen]
function remote_spleef:game_start_check/join_yellow if @a[tag=JoinYellow]

# Player is out of their starting spot, leave team
function remote_spleef:game_start_check/leave_red if @a[tag=LeaveRed]
function remote_spleef:game_start_check/leave_blue if @a[tag=LeaveBlue]
function remote_spleef:game_start_check/leave_green if @a[tag=LeaveGreen]
function remote_spleef:game_start_check/leave_yellow if @a[tag=LeaveYellow]