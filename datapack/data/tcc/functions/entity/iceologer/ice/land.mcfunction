############################################################
# Effects for when the iceologer's ice hits the ground
############################################################

particle minecraft:item minecraft:ice ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal
playsound tcc:entity.iceologer.ice_hit hostile @a[distance=..16] ~ ~ ~ 0.5 1
kill @s
