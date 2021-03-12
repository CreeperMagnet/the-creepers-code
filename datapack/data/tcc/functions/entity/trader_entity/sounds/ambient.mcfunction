############################################################
# Description: Plays ambient noises based on which mob it is
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.enchanter] run playsound tcc:entity.enchanter.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.iceologer] run playsound tcc:entity.iceologer.ambient hostile @a[distance=..16]
execute if entity @s[tag=tcc.geomancer] run playsound tcc:entity.geomancer.ambient hostile @a[distance=..16]