# Commands to run when you've eaten a golden apple while wearing a cursed crown

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.operation set value "add"
execute if entity @s[advancements={tcc:technical/consume_item/golden_apple_with_cursed_crown={golden_apple=true}}] run data modify storage tcc:temp root.macro_input.value set value 6
execute if entity @s[advancements={tcc:technical/consume_item/golden_apple_with_cursed_crown={enchanted_golden_apple=true}}] run data modify storage tcc:temp root.macro_input.value set value 24
function tcc:item/cursed_crown/absorption/add_to_absorption with storage tcc:temp root.macro_input
tag @s add tcc.scheduled.cursed_crown_absorption_clear
schedule function tcc:item/cursed_crown/absorption/clear_absorption_scheduled 1t
advancement revoke @s only tcc:technical/consume_item/golden_apple_with_cursed_crown