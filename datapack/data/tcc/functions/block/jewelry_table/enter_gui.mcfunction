############################################################
# Tags the player if they've entered a jewelry table
############################################################

tag @s add tcc.inside_jewelry_table_gui
stopsound @a[distance=..16] block block.barrel.open

# Fix the edge case bug if the barrel was stuck in the closed state
execute as @e[type=armor_stand,distance=..7,tag=tcc.jewelry_table] at @s if block ~ ~ ~ minecraft:barrel[open=false] run function tcc:block/jewelry_table/open
advancement revoke @s only tcc:technical/item_used_on_block/open_jewelry_table
