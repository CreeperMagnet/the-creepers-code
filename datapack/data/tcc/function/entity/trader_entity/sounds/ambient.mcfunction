# Plays ambient noises based on which mob it is

execute if entity @s[tag=tcc.enchanter] run playsound tcc:entity.enchanter.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.iceologer] run playsound tcc:entity.iceologer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.geomancer] run playsound tcc:entity.geomancer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.snail,tag=tcc.snail.gary] run playsound tcc:entity.snail.gary_meow neutral @a[distance=..16]
execute if entity @s[tag=tcc.wandering_witch] run playsound tcc:entity.wandering_witch.ambient neutral @a[distance=..16]
execute if entity @s[tag=tcc.sprouter,tag=!tcc.baby] run playsound tcc:entity.sprouter.ambient neutral @a[distance=..16]
execute if entity @s[tag=tcc.sprouter,tag=tcc.baby] run playsound tcc:entity.sprouter.ambient neutral @a[distance=..16] ~ ~ ~ 1 1.5