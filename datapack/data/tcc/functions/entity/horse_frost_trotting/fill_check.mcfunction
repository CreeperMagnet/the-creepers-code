############################################################
# Checks if the area can be filled with frosted ice
############################################################

execute unless entity @e[dx=6,dz=6,type=!#tcc:frost_trotting_ignore,tag=!smithed.entity] positioned ~3 ~0.1 ~3 run fill ~-3 ~ ~-3 ~3 ~ ~3 frosted_ice replace water[level=0]
