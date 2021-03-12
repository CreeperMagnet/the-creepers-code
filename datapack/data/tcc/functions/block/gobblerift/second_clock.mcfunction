############################################################
# Description: Second commands for gobblerift
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.gobblerift.hungry,predicate=tcc:chance/three_fiftieths] run playsound tcc:block.gobblerift.hungry block @a[distance=..16]
execute if entity @s[tag=tcc.gobblerift.juicing,predicate=tcc:chance/one_tenth] run playsound tcc:block.gobblerift.digest block @a[distance=..16]
execute if entity @s[tag=tcc.gobblerift.juice_ready] run particle dragon_breath ~ ~1.3 ~ 0.1 0 0.1 0.01 4
data remove entity @s Offers.Recipes