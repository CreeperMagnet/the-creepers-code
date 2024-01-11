# Commands to run tickly for pottery tables

# Break if there is no barrel
execute unless block ~ ~ ~ minecraft:barrel run function tcc:block/pottery_table/break/main
execute if block ~ ~ ~ minecraft:barrel[open=true] run function tcc:block/pottery_table/tick/open
execute if entity @s[tag=tcc.pottery_table.open] if block ~ ~ ~ minecraft:barrel[open=false] run function tcc:block/pottery_table/tick/close

# Make archaeologist villagers
execute as @e[type=minecraft:villager,distance=..2,nbt={VillagerData:{profession:"minecraft:fisherman"},Xp:0},tag=!tcc.archaeologist,tag=!smithed.entity] if data entity @s Brain.memories."minecraft:job_site" run function tcc:block/pottery_table/check_villager
