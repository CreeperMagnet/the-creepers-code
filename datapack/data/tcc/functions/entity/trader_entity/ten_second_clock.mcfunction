############################################################
# Ten-second-clocks a wandering trader-based entity
############################################################

effect give @s invisibility 1000000 0 true
execute if entity @s[tag=tcc.gobblerift] run function tcc:block/gobblerift/ten_second_clock