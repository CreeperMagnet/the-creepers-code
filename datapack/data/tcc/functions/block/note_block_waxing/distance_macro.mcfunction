# Targets all note blocks that have been waxed with the macro distance
$execute as @e[type=minecraft:marker,distance=..$(distance),tag=tcc.waxed_note_block] at @s run function tcc:block/note_block_waxing/reset_note_macro with entity @s data
