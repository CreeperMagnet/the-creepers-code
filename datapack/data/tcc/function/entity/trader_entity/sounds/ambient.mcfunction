# Plays ambient noises based on which mob it is

# These are ordered by rarity of mob, so hopefully it short-circuits early and saves a few iotas of performance
execute if entity @s[tag=tcc.geomancer] run return run playsound tcc:entity.geomancer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.wandering_witch] run return run playsound tcc:entity.wandering_witch.ambient neutral @a[distance=..16]
execute if entity @s[tag=tcc.sprouter,tag=!tcc.baby] run return run playsound tcc:entity.sprouter.ambient neutral @a[distance=..16]
execute if entity @s[tag=tcc.sprouter] run return run playsound tcc:entity.sprouter.ambient neutral @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[tag=tcc.iceologer] run return run playsound tcc:entity.iceologer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.enchanter] run return run playsound tcc:entity.enchanter.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.snail,name="Gary"] run return run playsound tcc:entity.snail.gary_meow neutral @a[distance=..16]