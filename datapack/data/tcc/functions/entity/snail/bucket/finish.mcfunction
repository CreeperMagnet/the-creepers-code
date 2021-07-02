############################################################
# Description: Interaction with a snail
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.snail set from entity @s {}
execute if entity @s[scores={tcc.dummy2=1..}] store result storage tcc:storage root.temp.item.tag.tcc.snail_boost_timer int 1 run scoreboard players get @s tcc.dummy2
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Pos
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Motion
data remove storage tcc:storage root.temp.item.tag.tcc.snail.UUID
execute if entity @s[nbt=!{CustomName:'{"translate":"entity.tcc.snail"}'}] run data modify storage tcc:storage root.temp.item.tag.display.Name set from entity @s CustomName
playsound tcc:entity.snail.bucket neutral @a[distance=..16]
tp @s ~ -1000 ~
