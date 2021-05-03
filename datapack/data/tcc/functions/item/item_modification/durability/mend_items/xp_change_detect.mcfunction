############################################################
# Description: Tests if your XP level was changed by an XP orb
# Creator: CreeperMagnet_
############################################################

# Calculations for if your xp level changed or not
execute unless entity @s[scores={tcc.dummy=0}] run scoreboard players operation @s tcc.old_xp -= @s tcc.current_xp
tag @s remove tcc.mending_repaired
execute if score @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:mending"}],tcc:{repaired:0b}}}}] tcc.old_xp matches ..-1 run function tcc:item/item_modification/durability/mend_items/add_durability/mainhand
execute if score @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:mending"}],tcc:{repaired:0b}}}},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:mending"}],tcc:{repaired:0b}}}]}] tcc.old_xp matches ..-1 run function tcc:item/item_modification/durability/mend_items/add_durability/offhand
execute if score @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:mending"}],tcc:{repaired:0b}}}},nbt=!{Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:mending"}],tcc:{repaired:0b}}}]},nbt={Inventory:[{Slot:103b,tag:{Enchantments:[{id:"minecraft:mending"}],tcc:{repaired:0b}}}]}] tcc.old_xp matches ..-1 run function tcc:item/item_modification/durability/mend_items/add_durability/head
