# This file is run by the map maker to reinitalize the map.

# These two commands move the world spawn point to a single region file. This isn't technical
# requirement, but reduces the amount of region files we need from four to one, saving ~6mbs.
setworldspawn 136 3 136
gamerule spawnRadius 7

# Remove objectives
scoreboard objectives remove AffectedItems
scoreboard objectives remove health
scoreboard objectives remove loggedOff
scoreboard objectives remove QueryResult
scoreboard objectives remove SuccessCount

# Add objectives
scoreboard objectives add AffectedItems dummy
scoreboard objectives add health health
scoreboard objectives add loggedOff stat.leaveGame
scoreboard objectives add QueryResult dummy
scoreboard objectives add SuccessCount dummy


