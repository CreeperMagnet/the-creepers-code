############################################################
# Makes apple pies work
############################################################

execute if predicate tcc:entity/full_inventory run loot spawn ~ ~ ~ loot tcc:items/nibbled_golden_apple_pie

loot give @s[tag=tcc.scheduled.golden_apple_pie.offhand,nbt={Inventory:[{Slot:-106b}]},predicate=!tcc:entity/full_inventory] loot tcc:items/nibbled_golden_apple_pie
loot replace entity @s[tag=tcc.scheduled.golden_apple_pie.offhand,nbt=!{Inventory:[{Slot:-106b}]},predicate=!tcc:entity/full_inventory] weapon.offhand loot tcc:items/nibbled_golden_apple_pie
loot give @s[tag=tcc.scheduled.golden_apple_pie.mainhand,nbt={SelectedItem:{}},predicate=!tcc:entity/full_inventory] loot tcc:items/nibbled_golden_apple_pie
loot replace entity @s[tag=tcc.scheduled.golden_apple_pie.mainhand,nbt=!{SelectedItem:{}},predicate=!tcc:entity/full_inventory] weapon.mainhand loot tcc:items/nibbled_golden_apple_pie
tag @s remove tcc.scheduled.golden_apple_pie
tag @s remove tcc.scheduled.golden_apple_pie.offhand
tag @s remove tcc.scheduled.golden_apple_pie.mainhand
