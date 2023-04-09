############################################################
# Grow a gobblerift
############################################################

scoreboard players set @s tcc.dummy2 0
execute if entity @s[tag=tcc.gobblerift.seedling_5] run function tcc:block/gobblerift/set_state/hungry
execute if entity @s[tag=tcc.gobblerift.seedling_4] run function tcc:block/gobblerift/set_state/seedling_5
execute if entity @s[tag=tcc.gobblerift.seedling_3] run function tcc:block/gobblerift/set_state/seedling_4
execute if entity @s[tag=tcc.gobblerift.seedling_2] run function tcc:block/gobblerift/set_state/seedling_3
execute if entity @s[tag=tcc.gobblerift.seedling_1] run function tcc:block/gobblerift/set_state/seedling_2