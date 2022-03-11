############################################################
# Makes golden apple pies work
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"golden_apple_pie"}}}}] add tcc.scheduled.golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"golden_apple_pie"}}}]}] add tcc.scheduled.golden_apple_pie.offhand
schedule function tcc:item/golden_apple_pie/insert_nibbled 1t
effect give @s regeneration 20 1
function tcc:entity/player/modify_absorption/add_2
effect give @s minecraft:absorption 300 0
