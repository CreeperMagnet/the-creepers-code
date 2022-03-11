############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lectern[facing=north] run setblock ~ ~ ~ lectern[facing=east,powered=true,has_book=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lectern[facing=south] run setblock ~ ~ ~ lectern[facing=west,powered=true,has_book=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lectern[facing=east] run setblock ~ ~ ~ lectern[facing=south,powered=true,has_book=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ lectern[facing=west] run setblock ~ ~ ~ lectern[facing=north,powered=true,has_book=true]