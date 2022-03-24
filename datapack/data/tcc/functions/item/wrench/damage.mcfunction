############################################################
# Damages the wrench
############################################################

execute if entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{tcc:{id:"wrench"}}}},nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"wrench"}}}]}] run function tcc:item/durability/damage_generic_amount/offhand_1
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"wrench"}}}}] run function tcc:item/durability/damage_generic_amount/mainhand_1
