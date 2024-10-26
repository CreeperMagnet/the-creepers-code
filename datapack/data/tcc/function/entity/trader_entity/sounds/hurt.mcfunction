# Plays hurt noises based on which mob it is

# These are ordered by rarity of mob, so hopefully it short-circuits early and saves a few iotas of performance
execute if entity @s[tag=tcc.wandering_witch] run return run playsound tcc:entity.wandering_witch.hurt neutral @a[distance=..16]
execute if entity @s[tag=tcc.geomancer] run return run playsound tcc:entity.geomancer.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.snail] run return run playsound tcc:entity.snail.hurt neutral @a[distance=..16]
execute if entity @s[tag=tcc.sprouter,tag=!tcc.baby] run return run playsound tcc:entity.sprouter.hurt neutral @a[distance=..16]
execute if entity @s[tag=tcc.sprouter] run return run playsound tcc:entity.sprouter.hurt neutral @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[tag=tcc.iceologer] run return run playsound tcc:entity.iceologer.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.enchanter] run return run playsound tcc:entity.enchanter.hurt hostile @a[distance=..16]
