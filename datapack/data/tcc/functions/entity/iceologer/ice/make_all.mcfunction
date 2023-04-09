############################################################
# Spawns ice above the player
############################################################

execute if block ~ ~1 ~ #tcc:air if block ~ ~2 ~ #tcc:air if block ~ ~3 ~ #tcc:air if block ~ ~4 ~ #tcc:air run tag @s add tcc.tag
execute if entity @s[tag=!tcc.tag] run function tcc:entity/iceologer/ice/freeze_target
execute if entity @s[tag=tcc.tag] positioned ~ ~ ~ run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~1 ~ ~ run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~-1 ~ ~ run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~ ~ ~1 run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~ ~ ~-1 run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~1 ~ ~1 run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~1 ~ ~-1 run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~-1 ~ ~1 run function tcc:entity/iceologer/ice/create_falling_block
execute if entity @s[tag=tcc.tag] positioned ~-1 ~ ~-1 run function tcc:entity/iceologer/ice/create_falling_block

tag @s remove tcc.tag
