############################################################
# Description: Makes teas drop teacups, rather than glass bottles. Yikes.
# Creator: CreeperMagnet_
############################################################

loot replace entity @a[tag=tcc.scheduled.tea_replace,nbt=!{SelectedItem:{id:"minecraft:glass_bottle",Count:1b}},nbt={Inventory:[{id:"minecraft:glass_bottle",Count:1b,Slot:-106b}]}] weapon.offhand loot tcc:items/teacup
loot replace entity @a[tag=tcc.scheduled.tea_replace,nbt={SelectedItem:{id:"minecraft:glass_bottle",Count:1b}}] weapon.mainhand loot tcc:items/teacup
tag @a remove tcc.scheduled.tea_replace
