############################################################
# Makes golden apple pies work
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_apple_pie
tag @s add tcc.scheduled.golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"golden_apple_pie"}}}}] add tcc.scheduled.golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"golden_apple_pie"}}}]}] add tcc.scheduled.golden_apple_pie.offhand
schedule function tcc:item/golden_apple_pie/whole/scheduled 1t
effect give @s minecraft:regeneration 7 1
effect give @s minecraft:absorption 160 0
