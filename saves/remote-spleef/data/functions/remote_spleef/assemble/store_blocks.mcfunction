# Clear out old blocks
execute @e[type=area_effect_cloud,name=assemble_area] ~1 ~1 ~1 fill ~ ~ ~ ~13 ~4 ~13 minecraft:air

# Clone filtered blocks to same area (rooms 1 to 4)
clone 81 4 145 94 8 158 97 5 81 filtered normal minecraft:wool 11
clone 145 4 145 158 8 158 97 5 81 filtered normal minecraft:wool 14
clone 81 4 209 94 8 222 97 5 81 filtered normal minecraft:wool 4
clone 81 4 209 158 8 222 97 5 81 filtered normal minecraft:wool 13
# Replace leftover air with void blocks, so additional loading is a additive
execute @e[type=area_effect_cloud,name=assemble_area] ~ ~ ~ fill ~1 ~1 ~1 ~14 ~5 ~14 structure_void 0 replace air

# When save a structure_block with a redstone_block, it will save in memory, but not to the physical file.
setblock 97 3 80 minecraft:redstone_block
setblock 97 3 80 minecraft:stone