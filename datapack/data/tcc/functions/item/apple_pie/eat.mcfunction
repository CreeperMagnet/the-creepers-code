############################################################
# Description: Makes apple pies work
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"apple_pie"}}}}] add tcc.scheduled.apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"apple_pie"}}}]}] add tcc.scheduled.apple_pie.offhand
schedule function tcc:item/apple_pie/insert_nibbled 1t