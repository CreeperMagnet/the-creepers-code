# Makes rotten porkchops anger all zombified piglins around you

advancement revoke @s only tcc:technical/consume_item/rotten_porkchop
data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.UUID set from entity @s UUID
execute as @e[type=minecraft:zombified_piglin,distance=..30,sort=nearest,tag=!smithed.entity] run function tcc:item/rotten_porkchop/anger with storage tcc:temp root.macro_input
