############################################################
# Scans until it hits the bottom of the ocean monument
############################################################

execute if block ~ ~ ~ prismarine run function tcc:postgen/ocean_monument_edits/modify/destroy
execute unless entity @s[tag=tcc.found] positioned ~ ~-1 ~ run function tcc:postgen/ocean_monument_edits/modify/scan
execute if entity @s[tag=tcc.found] run kill @s
