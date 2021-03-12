############################################################
# Description: Starts the iteration of x, y, and z
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] run function tcc:item/riftjuice_bottle/iterate_z_start
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1}] tcc.dummy 1
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~1 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2..3}] tcc.dummy 2
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~2 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4..7}] tcc.dummy 4
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~4 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8..15}] tcc.dummy 8
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~8 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16..31}] tcc.dummy 16
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~16 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=32..63}] tcc.dummy 32
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~32 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=64..127}] tcc.dummy 64
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~64 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=128..255}] tcc.dummy 128
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~128 ~ run function tcc:item/riftjuice_bottle/iterate_y
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=256..511}] tcc.dummy 256
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~256 ~ run function tcc:item/riftjuice_bottle/iterate_y
