############################################################
# Makes an enderman teleport when nearly hit by a boomerang
############################################################

playsound entity.enderman.teleport neutral @a[distance=..16]
spreadplayers ~ ~ 0 32 under 128 false @s
