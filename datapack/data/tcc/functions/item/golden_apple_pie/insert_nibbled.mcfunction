############################################################
# Makes apple pies work
############################################################

execute as @a[tag=tcc.scheduled.golden_apple_pie.offhand,nbt={Inventory:[{Slot:-106b}]}] run loot give @s loot tcc:items/nibbled_golden_apple_pie
execute as @a[tag=tcc.scheduled.golden_apple_pie.offhand,nbt=!{Inventory:[{Slot:-106b}]}] run loot replace entity @s weapon.offhand loot tcc:items/nibbled_golden_apple_pie
execute as @a[tag=tcc.scheduled.golden_apple_pie.mainhand,nbt={SelectedItem:{}}] run loot give @s loot tcc:items/nibbled_golden_apple_pie
execute as @a[tag=tcc.scheduled.golden_apple_pie.mainhand,nbt=!{SelectedItem:{}}] run loot replace entity @s weapon.mainhand loot tcc:items/nibbled_golden_apple_pie
tag @a[tag=tcc.scheduled.golden_apple_pie.offhand] remove tcc.scheduled.golden_apple_pie.offhand
tag @a[tag=tcc.scheduled.golden_apple_pie.mainhand] remove tcc.scheduled.golden_apple_pie.mainhand
