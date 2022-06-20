############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=north_up] run setblock ~ ~ ~ jigsaw[orientation=east_up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=east_up] run setblock ~ ~ ~ jigsaw[orientation=south_up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=south_up] run setblock ~ ~ ~ jigsaw[orientation=west_up]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=west_up] run setblock ~ ~ ~ jigsaw[orientation=up_north]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=up_north] run setblock ~ ~ ~ jigsaw[orientation=up_east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=up_east] run setblock ~ ~ ~ jigsaw[orientation=up_south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=up_south] run setblock ~ ~ ~ jigsaw[orientation=up_west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=up_west] run setblock ~ ~ ~ jigsaw[orientation=down_north]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=down_north] run setblock ~ ~ ~ jigsaw[orientation=down_east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=down_east] run setblock ~ ~ ~ jigsaw[orientation=down_south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=down_south] run setblock ~ ~ ~ jigsaw[orientation=down_west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ jigsaw[orientation=down_west] run setblock ~ ~ ~ jigsaw[orientation=north_up]
