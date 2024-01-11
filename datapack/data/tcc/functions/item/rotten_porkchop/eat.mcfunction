# Makes rotten porkchops give you nausea

advancement revoke @s only tcc:technical/consume_item/rotten_porkchop
data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.UUID set from entity @s UUID
execute as @e[type=minecraft:zombified_piglin,distance=..30,sort=nearest,tag=!smithed.entity] run function tcc:item/rotten_porkchop/anger with storage tcc:storage root.temp.macro_input
effect give @s minecraft:nausea 30 0
