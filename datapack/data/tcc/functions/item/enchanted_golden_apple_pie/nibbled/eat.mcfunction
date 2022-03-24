############################################################
# Makes enchanted golden apple pie halves work
############################################################

advancement revoke @s only tcc:technical/consume_item/nibbled_enchanted_golden_apple_pie
tag @s add tcc.scheduled.nibbled_enchanted_golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"nibbled_enchanted_golden_apple_pie"}}}}] add tcc.scheduled.nibbled_enchanted_golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"nibbled_enchanted_golden_apple_pie"}}}]}] add tcc.scheduled.nibbled_enchanted_golden_apple_pie.offhand
schedule function tcc:item/enchanted_golden_apple_pie/nibbled/scheduled 1t
effect give @s regeneration 20 1
function tcc:entity/player/modify_absorption/add_8
effect give @s absorption 300 3
effect give @s resistance 300 0
effect give @s fire_resistance 300 0
