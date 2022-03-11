############################################################
# Makes rotten porkchops give you nausea
############################################################

advancement revoke @s only tcc:technical/consume_item/rotten_porkchop
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.rotten_porkchop_anger set from entity @s UUID
execute as @e[type=minecraft:zombified_piglin,distance=..30,sort=nearest,tag=!smithed.entity] run function tcc:item/rotten_porkchop/anger
effect give @s nausea 30 0
