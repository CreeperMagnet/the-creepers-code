############################################################
# Commands to run if the anchor is triggered
############################################################

execute if entity @s[tag=tcc.positional_anchor.filled] run function tcc:block/positional_anchor/fire/shoot_pearl
tag @s add tcc.positional_anchor.powered
