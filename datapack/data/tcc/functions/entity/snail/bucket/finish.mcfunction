############################################################
# Description: Interaction with a snail
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.snail set from entity @s {}
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Pos
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Motion
data remove storage tcc:storage root.temp.item.tag.tcc.snail.UUID
execute if entity @s[nbt=!{CustomName:'{"translate":"entity.tcc.snail"}'}] run data modify storage tcc:storage root.temp.item.tag.display.Name set from entity @s CustomName
playsound tcc:entity.snail.bucket neutral @a[distance=..16]
tp @s ~ -1000 ~
