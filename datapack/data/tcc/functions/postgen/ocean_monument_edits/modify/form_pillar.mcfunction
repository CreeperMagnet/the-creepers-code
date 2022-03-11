############################################################
# Scans until it hits the bottom of the ocean, placing part of a pillar as it goes
############################################################

setblock ~ ~ ~ minecraft:prismarine_bricks
execute positioned ~1 ~ ~ run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~-1 ~ ~ run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~ ~ ~1 run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~ ~ ~-1 run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~1 ~ ~1 run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~-1 ~ ~1 run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~1 ~ ~-1 run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~-1 ~ ~-1 run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate
execute positioned ~ ~ ~ run function tcc:postgen/ocean_monument_edits/modify/pillar_iterate