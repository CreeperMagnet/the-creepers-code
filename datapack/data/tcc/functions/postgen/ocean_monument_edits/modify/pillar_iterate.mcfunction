############################################################
# Scans until it hits the bottom of the ocean, placing part of a pillar as it goes
############################################################

setblock ~ ~ ~ minecraft:prismarine_bricks
execute if block ~ ~-1 ~ #tcc:monument_generation/pillar_replace positioned ~ ~-1 ~ run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate