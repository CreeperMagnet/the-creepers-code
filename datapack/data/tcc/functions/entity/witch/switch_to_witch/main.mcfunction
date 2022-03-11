############################################################
# Turns the wandering trader back into a witch, and keeps the witch data
############################################################

data remove storage tcc:storage root.temp

summon witch ~ ~ ~ {Tags:["tcc.witch.newly_spawned"],ArmorItems:[{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000,trader_data:{}}},{},{}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
data remove entity @s ArmorItems[1].tag.witch_data.Pos
data remove entity @s ArmorItems[1].tag.witch_data.Motion
data remove entity @s ArmorItems[1].tag.witch_data.Rotation
data remove entity @s ArmorItems[1].tag.witch_data.HurtTime
data remove entity @s ArmorItems[1].tag.witch_data.ArmorItems
data remove entity @s ArmorItems[1].tag.witch_data.ArmorDropChances
execute unless data entity @s {CustomName:'{"translate":"entity.minecraft.witch"}'} run data modify entity @s ArmorItems[1].tag.witch_data.CustomName set from entity @s CustomName
execute if data entity @s {PersistenceRequired:1b} run data modify entity @s ArmorItems[1].tag.witch_data.PersistenceRequired set value 1b

data modify storage tcc:storage root.temp.witch_data set from entity @s ArmorItems[1].tag.witch_data
data modify storage tcc:storage root.temp.trader_data set from entity @s
execute unless data entity @s {HurtTime:0s} run data modify storage tcc:storage root.temp.witch_data.hurt set value 1b
execute if entity @s[scores={tcc.dummy2=1..}] run data modify storage tcc:storage root.temp.witch_data.angry set value 1b

execute as @e[type=witch,tag=tcc.witch.newly_spawned,limit=1] run function tcc:entity/witch/switch_to_witch/as_witch
particle minecraft:witch ~ ~2.5 ~ 0.1 0.5 0.1 0 100 force
tp ~ -1000 ~
