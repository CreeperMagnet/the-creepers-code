# Triggers when the player waxes a note block (clicks with honeycomb)

execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute if items entity @s weapon.mainhand minecraft:honeycomb anchored eyes run function tcc:block/note_block_waxing/interact/raycast

execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 1
scoreboard players add @s tcc.dummy 2
data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.distance int 1 run scoreboard players get @s tcc.dummy
function tcc:block/note_block_waxing/distance_macro with storage tcc:temp root.macro_input
advancement revoke @s only tcc:technical/default_block_use/waxed_note_block
