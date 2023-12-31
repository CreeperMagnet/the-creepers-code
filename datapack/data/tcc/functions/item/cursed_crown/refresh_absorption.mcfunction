############################################################
# Refreshes absorption on the player
############################################################

scoreboard players set @s tcc.cursed_crown_cooldown 10
execute if data entity @s {AbsorptionAmount:16.0f} run return 0

effect clear @s absorption
effect give @s absorption infinite 3 true
playsound tcc:item.cursed_crown.refresh player @a[distance=..16]