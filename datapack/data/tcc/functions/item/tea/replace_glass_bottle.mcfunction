############################################################
# Description: Makes teas drop teacups, rather than glass bottles. Yikes.
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/tea/glass_bottle
execute if entity @s[tag=tcc.scheduled.tea_drink.offhand,nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle",Count:1b}]}] run loot replace entity @s weapon.offhand loot tcc:items/teacup
execute if entity @s[tag=tcc.scheduled.tea_drink.mainhand,nbt={SelectedItem:{id:"minecraft:glass_bottle",Count:1b}}] run loot replace entity @s weapon.mainhand loot tcc:items/teacup
tag @s remove tcc.scheduled.tea_drink.offhand
tag @s remove tcc.scheduled.tea_drink.mainhand
