############################################################
# Check if the item frame should pop off
############################################################

execute if block ~ ~ ~ #tcc:phantom_item_frame_allowed/up run scoreboard players reset @s tcc.dummy2

execute if block ~ ~ ~ #slabs unless block ~ ~ ~ #slabs[type=top] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:rods[facing=down] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:rods[facing=up] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:chain[axis=y] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:chorus_plant[down=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:trapdoors unless block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:lanterns[hanging=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:pointed_dripstone[vertical_direction=up] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:non_full_amethyst_blocks[facing=up] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:snow unless block ~ ~ ~ minecraft:snow[layers=1] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^1 #minecraft:shulker_boxes[facing=down] run scoreboard players set @s tcc.dummy2 1

execute if block ~1 ~ ~ #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~-1 ~ ~ #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=east] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~1 #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=north] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~-1 #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=south] run scoreboard players set @s tcc.dummy2 1

execute if block ^ ^ ^-.1 #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=up] run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-2 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-3 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-4 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-5 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-6 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-7 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-8 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-9 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-10 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-11 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable unless block ^ ^ ^-10 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-12 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable unless block ^ ^ ^-10 #tcc:piston_non_pushable unless block ^ ^ ^-11 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-13 #tcc:pistons[facing=up] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable unless block ^ ^ ^-10 #tcc:piston_non_pushable unless block ^ ^ ^-11 #tcc:piston_non_pushable unless block ^ ^ ^-12 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
