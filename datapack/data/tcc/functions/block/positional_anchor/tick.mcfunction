############################################################
# Description: Commands to break/trigger a positional anchor
# Creator: Nexus
############################################################

execute if block ~ ~ ~ #tcc:air run function tcc:block/positional_anchor/break

execute if block ~ ~ ~ dropper[triggered=true] if entity @s[tag=!tcc.positional_anchor.powered] run function tcc:block/positional_anchor/trigger
execute if block ~ ~ ~ dropper[triggered=false] run tag @s remove tcc.positional_anchor.powered
