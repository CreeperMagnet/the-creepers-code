############################################################
# Commands to run tickly for jewelry tables
############################################################

# Break if there is no barrel
execute unless block ~ ~ ~ barrel run function tcc:block/jewelry_table/break/main
execute if block ~ ~ ~ barrel[open=true] run function tcc:block/jewelry_table/tick/open
execute if entity @s[tag=tcc.jewelry_table.open] if block ~ ~ ~ barrel[open=false] run function tcc:block/jewelry_table/tick/close

# Make jeweler villagers
execute as @e[type=villager,distance=..2,nbt={VillagerData:{profession:"minecraft:fisherman"},Xp:0},tag=!tcc.jeweler,tag=!smithed.entity] if data entity @s Brain.memories."minecraft:job_site" run function tcc:block/jewelry_table/check_jeweler
