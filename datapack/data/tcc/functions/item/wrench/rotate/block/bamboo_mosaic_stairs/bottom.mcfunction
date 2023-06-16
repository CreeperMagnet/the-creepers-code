############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_mosaic_stairs[facing=north] run setblock ~ ~ ~ bamboo_mosaic_stairs[facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_mosaic_stairs[facing=east] run setblock ~ ~ ~ bamboo_mosaic_stairs[facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_mosaic_stairs[facing=south] run setblock ~ ~ ~ bamboo_mosaic_stairs[facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_mosaic_stairs[facing=west] run setblock ~ ~ ~ bamboo_mosaic_stairs[facing=north]
