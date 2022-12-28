############################################################
# Makes golden apple pie halves work
############################################################

advancement revoke @s only tcc:technical/consume_item/nibbled_golden_apple_pie
tag @s add tcc.scheduled.nibbled_golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"nibbled_golden_apple_pie"}}}}] add tcc.scheduled.nibbled_golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"nibbled_golden_apple_pie"}}}]}] add tcc.scheduled.nibbled_golden_apple_pie.offhand
schedule function tcc:item/golden_apple_pie/nibbled/scheduled 1t
effect give @s minecraft:regeneration 7 1
effect give @s minecraft:absorption 160 0
