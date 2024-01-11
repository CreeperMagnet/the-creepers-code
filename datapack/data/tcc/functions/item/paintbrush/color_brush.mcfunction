# Colors a paintbrush

$clear @s[gamemode=!creative] minecraft:$(color)_dye 1
data remove storage tcc:storage root.temp.item
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
$data modify storage tcc:storage root.temp.item.tag.CustomModelData set value $(custom_model_data)
item modify entity @s[nbt={SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.mainhand tcc:copy_nbt
item modify entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}}] weapon.offhand tcc:copy_nbt

playsound tcc:item.paintbrush.paint block @a[distance=..16]
