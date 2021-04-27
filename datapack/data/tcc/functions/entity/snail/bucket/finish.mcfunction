############################################################
# Description: Interaction with a snail
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.snail set from entity @s {}
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Pos
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Motion
data remove storage tcc:storage root.temp.item.tag.tcc.snail.UUID
playsound minecraft:item.bucket.fill_fish neutral @a[distance=..16]
tp @s ~ -1000 ~
