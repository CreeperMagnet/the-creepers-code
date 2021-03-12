############################################################
# Description: Commands for the boomerang hitting a block and bouncing
# Creator: CreeperMagnet_
############################################################
scoreboard players set tcc.temp_0 tcc.dummy 100
scoreboard players operation tcc.temp_0 tcc.dummy -= @s tcc.dummy2
scoreboard players operation @s tcc.dummy2 = tcc.temp_0 tcc.dummy
scoreboard players reset tcc.temp_0
tag @s add tcc.boomerang.bounce
tp @s ^ ^ ^-0.5