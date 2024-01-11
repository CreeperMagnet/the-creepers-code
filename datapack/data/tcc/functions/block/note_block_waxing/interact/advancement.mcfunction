# Triggers when the player waxes a note block (clicks with honeycomb)

advancement revoke @s only tcc:technical/item_used_on_block/waxed_note_block
data remove storage tcc:storage root.temp.item
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

execute anchored eyes run function tcc:block/note_block_waxing/interact/raycast
execute as @e[type=minecraft:marker,distance=..8,tag=tcc.waxed_note_block] at @s run function tcc:block/note_block_waxing/reset_note_macro with entity @s data
item modify entity @s[gamemode=!creative,tag=tcc.tag] weapon.mainhand tcc:reduce_count/1
tag @s remove tcc.tag
