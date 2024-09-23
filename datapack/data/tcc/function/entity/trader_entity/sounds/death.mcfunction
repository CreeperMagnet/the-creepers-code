# Plays death noises based on which mob it is

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tcc:{entity:"enchanter"}}}}}] run playsound tcc:entity.enchanter.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tcc:{entity:"iceologer"}}}}}] run playsound tcc:entity.iceologer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tcc:{entity:"geomancer"}}}}}] run playsound tcc:entity.geomancer.death hostile @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tcc:{entity:"wandering_witch"}}}}}] run playsound tcc:entity.wandering_witch.death neutral @a[distance=..16]
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tcc:{entity:"sprouter"}}}}}] run playsound tcc:entity.sprouter.death neutral @a[distance=..16]
execute unless entity @s[nbt=!{Item:{components:{"minecraft:custom_data":{tcc:{entity:"snail"}}}}},tag=!tcc.snail] run playsound tcc:entity.snail.hurt neutral @a[distance=..16]
