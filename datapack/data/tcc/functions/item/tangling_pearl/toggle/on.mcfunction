# Changes the enabled status

data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330241
data modify storage tcc:storage root.temp.item.tag.tcc.enabled set value 1b
playsound tcc:item.tangling_pearl.activate player @a[distance=..16]
scoreboard players set @s tcc.dummy 1