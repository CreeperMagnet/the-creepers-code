############################################################
# Plays ambient noises based on which mob it is
############################################################

execute if entity @s[tag=tcc.enchanter] run playsound tcc:entity.enchanter.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.iceologer] run playsound tcc:entity.iceologer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.geomancer] run playsound tcc:entity.geomancer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.snail,tag=tcc.snail.gary] run playsound tcc:entity.snail.gary_meow neutral @a[distance=..16]
execute if entity @s[tag=tcc.witch_trader] run playsound minecraft:entity.witch.ambient neutral @a[distance=..16]
execute if entity @s[tag=tcc.gobblerift.digesting,predicate=!tcc:chance/one_third] run playsound tcc:block.gobblerift.digest block @a[distance=..16]
execute if entity @s[tag=tcc.gobblerift.hungry,predicate=tcc:chance/one_half] run playsound tcc:block.gobblerift.hungry block @a[distance=..16]