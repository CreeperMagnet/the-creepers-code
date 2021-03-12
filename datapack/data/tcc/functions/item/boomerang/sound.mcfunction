############################################################
# Description: Makes a boomerang sound under certain conditions
# Creator: CreeperMagnet_
############################################################

scoreboard players operation tcc.temp_0 tcc.dummy = @s tcc.dummy2
scoreboard players operation tcc.temp_0 tcc.dummy %= tcc.const.3 tcc.dummy
execute if score tcc.temp_0 tcc.dummy matches 0 run playsound tcc:item.boomerang.swish player @a[distance=..32] ~ ~ ~ 2
