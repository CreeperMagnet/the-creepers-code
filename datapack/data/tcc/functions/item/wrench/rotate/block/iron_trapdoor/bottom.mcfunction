############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=north,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=south,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=east,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=west,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=true]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=north,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=false]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=south,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=false]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=east,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=false]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ iron_trapdoor[facing=west,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=false]
