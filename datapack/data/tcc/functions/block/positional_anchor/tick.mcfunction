############################################################
# Commands to break/trigger a positional anchor
############################################################

execute if block ~ ~ ~ #tcc:air run function tcc:block/positional_anchor/break

execute if block ~ ~ ~ dropper[triggered=true] if entity @s[tag=!tcc.positional_anchor.powered] run function tcc:block/positional_anchor/fire/triggered
execute if block ~ ~ ~ dropper[triggered=false] run tag @s remove tcc.positional_anchor.powered
