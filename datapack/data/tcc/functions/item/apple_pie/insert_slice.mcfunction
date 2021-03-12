############################################################
# Description: Makes apple pies work
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.nibbled_apple_pie.offhand,nbt=!{Inventory:[{Slot:-106b}]}] run loot replace entity @s weapon.offhand loot tcc:items/apple_pie_slice
execute as @a[tag=tcc.scheduled.nibbled_apple_pie.mainhand,nbt=!{SelectedItem:{}}] run loot replace entity @s weapon.mainhand loot tcc:items/apple_pie_slice
tag @a[tag=tcc.scheduled.nibbled_apple_pie.offhand] remove tcc.scheduled.nibbled_apple_pie.offhand
tag @a[tag=tcc.scheduled.nibbled_apple_pie.mainhand] remove tcc.scheduled.nibbled_apple_pie.mainhand
