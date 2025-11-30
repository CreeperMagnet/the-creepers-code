# Gives the cat proper tags after renaming

data modify entity @s variant set from entity @s data.tcc.stored_variant
data remove entity @s data.tcc.stored_variant