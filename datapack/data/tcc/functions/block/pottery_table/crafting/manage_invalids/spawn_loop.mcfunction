# Spawns invalids in item form

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.item set from storage tcc:temp root.export_items[0]
execute as @p[tag=tcc.inside_pottery_table_gui,gamemode=!spectator] at @s run function tcc:technical/macros/spawn_item with storage tcc:temp root.macro_input
execute unless entity @a[tag=tcc.inside_pottery_table_gui,gamemode=!spectator] positioned ~ ~0.5 ~ run function tcc:technical/macros/spawn_item with storage tcc:temp root.macro_input
data remove storage tcc:temp root.export_items[0]
execute if data storage tcc:temp root.export_items[0] run function tcc:block/pottery_table/crafting/manage_invalids/spawn_loop
