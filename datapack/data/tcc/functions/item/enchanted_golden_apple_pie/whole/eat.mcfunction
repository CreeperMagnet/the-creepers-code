############################################################
# Makes enchanted golden apple pies work
############################################################

advancement revoke @s only tcc:technical/consume_item/enchanted_golden_apple_pie
tag @s add tcc.scheduled.enchanted_golden_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"enchanted_golden_apple_pie"}}}}] add tcc.scheduled.enchanted_golden_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"enchanted_golden_apple_pie"}}}]}] add tcc.scheduled.enchanted_golden_apple_pie.offhand
schedule function tcc:item/enchanted_golden_apple_pie/whole/scheduled 1t
effect give @s regeneration 40 1
function tcc:entity/player/modify_absorption/add_8
effect give @s absorption 300 3
effect give @s resistance 300 0
effect give @s fire_resistance 300 0
