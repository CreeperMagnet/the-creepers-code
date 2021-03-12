############################################################
# Description: Makes golden apple pie halves work
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/nibbled_golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"nibbled_golden_apple_pie"}}}}] add tcc.scheduled.nibbled_golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"nibbled_golden_apple_pie"}}}]}] add tcc.scheduled.nibbled_golden_apple_pie.offhand
schedule function tcc:item/golden_apple_pie/insert_slice 1t
effect give @s regeneration 10 1
function tcc:entity/player/modify_absorption/add_2
effect give @s minecraft:absorption 300 0