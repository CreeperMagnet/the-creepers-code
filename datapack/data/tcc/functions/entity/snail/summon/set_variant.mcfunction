############################################################
# Description: Sets the variant for the snail
# Creator: CreeperMagnet_
############################################################

tag @s[predicate=tcc:chance/one_half] add tcc.tag
scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute if entity @s[tag=tcc.tag,scores={tcc.dummy=1}] run function tcc:entity/snail/summon/set_variant/black
execute if entity @s[tag=tcc.tag,scores={tcc.dummy=2}] run function tcc:entity/snail/summon/set_variant/spiral
execute if entity @s[tag=tcc.tag,scores={tcc.dummy=3}] run function tcc:entity/snail/summon/set_variant/yellow
execute if entity @s[tag=tcc.tag,predicate=tcc:chance/one_third,predicate=tcc:in_soul_sand_valley] run function tcc:entity/snail/summon/set_variant/skull
execute if entity @s[tag=tcc.tag,predicate=tcc:chance/five_hundredths] run function tcc:entity/snail/summon/set_variant/light_blue
scoreboard players reset @s tcc.dummy
tag @s remove tcc.tag
