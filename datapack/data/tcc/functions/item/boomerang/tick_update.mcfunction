############################################################
# Commands to update a boomerang once every tick
############################################################

scoreboard players operation #temp_0 tcc.dummy = @s tcc.dummy2
scoreboard players operation #temp_0 tcc.dummy %= #3 tcc.dummy
scoreboard players operation #temp_1 tcc.dummy = @s tcc.dummy2
scoreboard players operation #temp_1 tcc.dummy %= #12 tcc.dummy

# Play a sound under certain conditions
execute if score #temp_0 tcc.dummy matches 0 at @s run playsound tcc:item.boomerang.swish player @a[distance=..32] ~ ~ ~ 2

# Rotate the boomerang
execute if score #temp_1 tcc.dummy matches 0 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}}
execute if score #temp_1 tcc.dummy matches 3 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:1.57079632679f}}}
execute if score #temp_1 tcc.dummy matches 6 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:3.141f}}}
execute if score #temp_1 tcc.dummy matches 9 run data merge entity @s {start_interpolation:0,transformation:{right_rotation:{axis:[0.0f,0.0f,1.0f],angle:4.71238898038f}}}
