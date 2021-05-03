############################################################
# Description: Plays death noises based on which mob it is
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={Item:{tag:{tcc:{entity:"enchanter"}}}}] run playsound tcc:entity.enchanter.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{tag:{tcc:{entity:"iceologer"}}}}] run playsound tcc:entity.iceologer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{tag:{tcc:{entity:"geomancer"}}}}] run playsound tcc:entity.geomancer.death hostile @a[distance=..16]
execute unless entity @s[nbt=!{Item:{tag:{tcc:{entity:"snail"}}}},tag=!tcc.snail] run playsound tcc:entity.snail.hurt hostile @a[distance=..16]
