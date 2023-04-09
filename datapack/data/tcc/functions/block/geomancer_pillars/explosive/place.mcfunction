############################################################
# Function to spawn a geomancer pillar
############################################################

fill ~ ~ ~ ~ ~2 ~ barrier
playsound minecraft:block.deepslate.place block @a[distance=..16]
execute align xz positioned ~0.5 ~0.5 ~0.5 summon item_display run function tcc:block/geomancer_pillars/explosive/initiate
