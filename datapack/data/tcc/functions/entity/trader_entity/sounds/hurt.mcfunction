############################################################
# Description: Plays hurt noises based on which mob it is
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.enchanter] run playsound tcc:entity.enchanter.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.iceologer] run playsound tcc:entity.iceologer.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.geomancer] run playsound tcc:entity.geomancer.hurt hostile @a[distance=..16]