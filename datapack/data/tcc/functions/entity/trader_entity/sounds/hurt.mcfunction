############################################################
# Plays hurt noises based on which mob it is
############################################################

execute if entity @s[tag=tcc.enchanter] run playsound tcc:entity.enchanter.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.iceologer] run playsound tcc:entity.iceologer.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.geomancer] run playsound tcc:entity.geomancer.hurt hostile @a[distance=..16]
execute if entity @s[tag=tcc.snail] run playsound tcc:entity.snail.hurt neutral @a[distance=..16]
execute if entity @s[tag=tcc.wandering_witch] run playsound tcc:entity.wandering_witch.hurt neutral @a[distance=..16]
execute if entity @s[tag=tcc.gobblerift,nbt=!{ArmorItems:[{tag:{tcc:{gobblerift_break_state:2}}}]}] run playsound tcc:block.gobblerift.hurt block @a[distance=..16]
