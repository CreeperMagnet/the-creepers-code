############################################################
# Makes apple pies work
############################################################

loot give @s[tag=tcc.scheduled.apple_pie.offhand,nbt={Inventory:[{Slot:-106b}]}] loot tcc:items/nibbled_apple_pie
loot replace entity @s[tag=tcc.scheduled.apple_pie.offhand,nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand loot tcc:items/nibbled_apple_pie
loot give @s[tag=tcc.scheduled.apple_pie.mainhand,nbt={SelectedItem:{}}] loot tcc:items/nibbled_apple_pie
loot replace entity @s[tag=tcc.scheduled.apple_pie.mainhand,nbt=!{SelectedItem:{}}] weapon.mainhand loot tcc:items/nibbled_apple_pie
tag @s remove tcc.scheduled.apple_pie
tag @s remove tcc.scheduled.apple_pie.offhand
tag @s remove tcc.scheduled.apple_pie.mainhand
