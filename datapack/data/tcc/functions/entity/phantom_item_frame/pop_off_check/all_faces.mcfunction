############################################################
# Check if the item frame should pop off
############################################################

scoreboard players reset @s tcc.dummy2
execute unless block ~ ~ ~ #tcc:phantom_item_frame_allowed/all_faces run scoreboard players set @s tcc.dummy2 1

execute if entity @s[tag=tcc.phantom_item_frame.down] run function tcc:entity/phantom_item_frame/pop_off_check/down
execute if entity @s[tag=tcc.phantom_item_frame.up] run function tcc:entity/phantom_item_frame/pop_off_check/up
execute if entity @s[tag=tcc.phantom_item_frame.north] run function tcc:entity/phantom_item_frame/pop_off_check/north
execute if entity @s[tag=tcc.phantom_item_frame.south] run function tcc:entity/phantom_item_frame/pop_off_check/south
execute if entity @s[tag=tcc.phantom_item_frame.west] run function tcc:entity/phantom_item_frame/pop_off_check/west
execute if entity @s[tag=tcc.phantom_item_frame.east] run function tcc:entity/phantom_item_frame/pop_off_check/east

execute if block ^ ^ ^-.1 #tcc:phantom_item_frame_allowed/back_not_allowed run scoreboard players set @s tcc.dummy2 1
