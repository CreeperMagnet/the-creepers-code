############################################################
# Description: Makes apple pie halves work
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/nibbled_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"nibbled_apple_pie"}}}}] add tcc.scheduled.nibbled_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"nibbled_apple_pie"}}}]}] add tcc.scheduled.nibbled_apple_pie.offhand
schedule function tcc:item/apple_pie/insert_slice 1t