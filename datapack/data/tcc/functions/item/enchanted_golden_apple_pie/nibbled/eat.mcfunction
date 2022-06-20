############################################################
# Makes enchanted golden apple pie halves work
############################################################

advancement revoke @s only tcc:technical/consume_item/nibbled_enchanted_golden_apple_pie
tag @s add tcc.scheduled.nibbled_enchanted_golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"nibbled_enchanted_golden_apple_pie"}}}}] add tcc.scheduled.nibbled_enchanted_golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"nibbled_enchanted_golden_apple_pie"}}}]}] add tcc.scheduled.nibbled_enchanted_golden_apple_pie.offhand
schedule function tcc:item/enchanted_golden_apple_pie/nibbled/scheduled 1t
effect give @s minecraft:regeneration 27 1
effect give @s minecraft:absorption 160 3
effect give @s minecraft:resistance 400 0
effect give @s minecraft:fire_resistance 400 0
