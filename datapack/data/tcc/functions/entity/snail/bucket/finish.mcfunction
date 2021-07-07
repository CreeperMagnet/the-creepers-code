############################################################
# Description: Interaction with a snail
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.snail set from entity @s {}
execute if entity @s[scores={tcc.dummy2=1..}] store result storage tcc:storage root.temp.item.tag.tcc.snail_boost_timer int 1 run scoreboard players get @s tcc.dummy2
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Pos
data remove storage tcc:storage root.temp.item.tag.tcc.snail.Motion
data remove storage tcc:storage root.temp.item.tag.tcc.snail.UUID
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330016} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330038
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330017} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330043
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330018} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330044
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330019} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330045
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330020} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330046
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330021} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330047
execute if data entity @s ArmorItems[3].tag.tcc.storage.model_items[0].tag{CustomModelData:330022} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330048
execute if data entity @s {CustomName:'{"text":"Gary"}'} run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330048
execute if entity @s[nbt=!{CustomName:'{"translate":"entity.tcc.snail"}'}] run data modify storage tcc:storage root.temp.item.tag.display.Name set from entity @s CustomName
playsound tcc:entity.snail.bucket neutral @a[distance=..16]
tp @s ~ -1000 ~
