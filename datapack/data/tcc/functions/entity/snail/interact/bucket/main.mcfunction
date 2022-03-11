############################################################
# Commands to run for bucketing the snail
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.snail set from entity @s {}
execute if entity @s[scores={tcc.dummy2=1..}] store result storage tcc:storage root.temp.item.tag.tcc.snail_boost_timer int 1 run scoreboard players get @s tcc.dummy2
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Pos
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Motion
data remove storage tcc:storage root.temp.item.tag.tcc.snail.UUID
execute if entity @s[tag=tcc.snail.black] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330032
execute if entity @s[tag=tcc.snail.brown] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330033
execute if entity @s[tag=tcc.snail.gary] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330034
execute if entity @s[tag=tcc.snail.light_blue] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330035
execute if entity @s[tag=tcc.snail.skull] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330036
execute if entity @s[tag=tcc.snail.spiral] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330037
execute if entity @s[tag=tcc.snail.yellow] run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330038
execute if entity @s[nbt=!{CustomName:'{"translate":"entity.tcc.snail"}'}] run data modify storage tcc:storage root.temp.item.tag.display.Name set from entity @s CustomName
execute if entity @s[tag=!tcc.silent] run playsound tcc:entity.snail.bucket neutral @a[distance=..16]
tp @s ~ -1000 ~