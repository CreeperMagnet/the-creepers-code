############################################################
# Gives player mining fatigue and plays a fun noise
############################################################

execute unless entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run playsound tcc:ambient.cursed_crown_mining_fatigue ambient @s ~ ~ ~ 10000 1
effect give @s mining_fatigue 30 2 false