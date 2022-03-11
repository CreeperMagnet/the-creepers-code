############################################################
# Modifies the item in storage
############################################################

playsound entity.generic.drink player @a[distance=..16] ~ ~ ~ 1 1.3

scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.potion.uses[0]

execute store result storage tcc:storage root.temp.item.tag.tcc.potion.uses[0] int 1 run data get storage tcc:storage root.temp.item.tag.tcc.potion.uses[0] 0.9999999999
execute if score @s tcc.dummy matches ..10 store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run data get storage tcc:storage root.temp.item.tag.CustomModelData 0.9999999999

execute if score @s tcc.dummy matches 1 run data modify storage tcc:storage root.temp.empty set value 1b