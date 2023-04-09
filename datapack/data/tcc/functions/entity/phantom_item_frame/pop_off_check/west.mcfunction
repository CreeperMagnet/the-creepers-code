############################################################
# Check if the item frame should pop off
############################################################

execute if block ~ ~ ~ #tcc:phantom_item_frame_allowed/all_sides run scoreboard players reset @s tcc.dummy2

execute if block ~ ~ ~ #tcc:horizontally_connectable[east=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:rods[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:rods[facing=east] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:chain[axis=x] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:chests[facing=north,type=left] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:chests[facing=south,type=right] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:ladder[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:anvil[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:anvil[facing=east] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=right] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=left] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:trapdoors unless block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:wall_heads[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=east] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=north,attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=south,attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=west,attachment=double_wall] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=east,attachment=double_wall] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=east,attachment=single_wall] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:non_full_amethyst_blocks[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:snow unless block ~ ~ ~ minecraft:snow[layers=1] unless block ~ ~ ~ minecraft:snow[layers=2] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:walls unless block ~ ~ ~ #minecraft:walls[east=none] run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^1 #minecraft:shulker_boxes[facing=east] run scoreboard players set @s tcc.dummy2 1

execute if block ~ ~1 ~ #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=down] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~-1 ~ #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=up] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~1 #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=north] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~-1 #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=south] run scoreboard players set @s tcc.dummy2 1

execute if block ^ ^ ^-.1 #tcc:phantom_item_frame_allowed/push_in_not_allowed[facing=west] run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-2 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-3 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-4 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-5 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-6 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-7 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-8 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-9 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-10 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-11 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable unless block ^ ^ ^-10 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-12 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable unless block ^ ^ ^-10 #tcc:piston_non_pushable unless block ^ ^ ^-11 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
execute if block ^ ^ ^-13 #tcc:pistons[facing=west] unless block ^ ^ ^-1 #tcc:piston_non_pushable unless block ^ ^ ^-2 #tcc:piston_non_pushable unless block ^ ^ ^-3 #tcc:piston_non_pushable unless block ^ ^ ^-4 #tcc:piston_non_pushable unless block ^ ^ ^-5 #tcc:piston_non_pushable unless block ^ ^ ^-6 #tcc:piston_non_pushable unless block ^ ^ ^-7 #tcc:piston_non_pushable unless block ^ ^ ^-8 #tcc:piston_non_pushable unless block ^ ^ ^-9 #tcc:piston_non_pushable unless block ^ ^ ^-10 #tcc:piston_non_pushable unless block ^ ^ ^-11 #tcc:piston_non_pushable unless block ^ ^ ^-12 #tcc:piston_non_pushable run scoreboard players set @s tcc.dummy2 1
