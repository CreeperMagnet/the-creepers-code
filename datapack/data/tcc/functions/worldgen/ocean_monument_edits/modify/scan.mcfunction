############################################################
# Description: Scans until it hits the bottom of the ocean monument
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ prismarine run function tcc:worldgen/ocean_monument_edits/modify/destroy
execute unless entity @s[tag=tcc.found] positioned ~ ~-1 ~ run function tcc:worldgen/ocean_monument_edits/modify/scan
execute if entity @s[tag=tcc.found] run kill @s
