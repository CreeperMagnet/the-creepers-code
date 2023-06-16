############################################################
# Commands to break a decorated pot into shards
############################################################

loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe
setblock ~ ~ ~ air
particle minecraft:block minecraft:decorated_pot ~ ~ ~ 0.3 0.3 0.3 0.5 50
playsound minecraft:block.decorated_pot.shatter block @a[distance=..16]