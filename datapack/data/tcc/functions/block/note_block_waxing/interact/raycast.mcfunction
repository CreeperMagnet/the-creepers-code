# Note block waxing raycast to find the note block

execute if block ^ ^ ^0.01 minecraft:note_block positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=tcc.waxed_note_block,distance=..0.5] run return run function tcc:block/note_block_waxing/add_wax
scoreboard players remove @s tcc.dummy 1
execute if score @s tcc.dummy matches 1.. positioned ^ ^ ^0.01 run function tcc:block/note_block_waxing/interact/raycast