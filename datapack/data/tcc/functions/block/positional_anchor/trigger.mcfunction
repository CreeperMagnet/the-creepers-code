############################################################
# Description: Commands to run if the anchor is triggered
# Creator: Nexus
############################################################

execute if entity @s[tag=tcc.positional_anchor.filled] run function tcc:block/positional_anchor/fire
tag @s add tcc.positional_anchor.powered
