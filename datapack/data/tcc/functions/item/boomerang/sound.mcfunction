############################################################
# Makes a boomerang sound under certain conditions
############################################################

scoreboard players operation #temp_0 tcc.dummy = @s tcc.dummy2
scoreboard players operation #temp_0 tcc.dummy %= #3 tcc.dummy
execute if score #temp_0 tcc.dummy matches 0 at @s run playsound tcc:item.boomerang.swish player @a[distance=..32] ~ ~ ~ 2
