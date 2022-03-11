############################################################
# Spawns invalids in item form
############################################################

scoreboard players remove @s tcc.dummy 1
execute as @p[tag=tcc.inside_jewelry_table_gui,gamemode=!spectator] at @s run summon item ~ ~ ~ {Item:{id:"stone",Count:1b},Tags:["tcc.replace_item","smithed.entity"]}
execute unless entity @a[tag=tcc.inside_jewelry_table_gui,gamemode=!spectator] run summon item ~ ~0.5 ~ {Item:{id:"stone",Count:1b},Tags:["tcc.replace_item","smithed.entity"]}
execute as @e[type=item,limit=1,tag=tcc.replace_item] run function tcc:block/jewelry_table/crafting/manage_invalids/edit_exported_item
data remove storage tcc:storage root.temp.export_items[0]
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:block/jewelry_table/crafting/manage_invalids/spawn_loop
