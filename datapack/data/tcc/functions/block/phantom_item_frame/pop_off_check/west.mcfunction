############################################################
# Description: Check if the item frame should pop off
# Creator: Ellivers
############################################################

execute if block ~ ~ ~ #tcc:phantom_item_frame_allowed/all_sides run scoreboard players reset @s tcc.dummy2

execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:horizontally_connectable[east=true] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:fence_gates[facing=north,open=false] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:fence_gates[facing=south,open=false] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:rods[facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:rods[facing=east] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:chain[axis=x] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:chests[facing=north,type=left] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:chests[facing=south,type=right] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:ladder[facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:anvil[facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:anvil[facing=east] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:doors[facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=right] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=left] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:doors[facing=east,open=true] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:trapdoors unless block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:wall_heads[facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:grindstone[face=wall,facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:grindstone[face=wall,facing=east] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:bell[facing=north,attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:bell[facing=south,attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:bell[facing=west,attachment=double_wall] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:bell[facing=east,attachment=double_wall] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:bell[facing=east,attachment=single_wall] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #tcc:non_full_amethyst_blocks[facing=west] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ minecraft:snow unless block ~ ~ ~ minecraft:snow[layers=1] unless block ~ ~ ~ minecraft:snow[layers=2] run scoreboard players set @s tcc.dummy2 1
execute unless score @s tcc.dummy2 matches 1 if block ~ ~ ~ #minecraft:walls unless block ~ ~ ~ #minecraft:walls[east=none] run scoreboard players set @s tcc.dummy2 1

execute unless score @s tcc.dummy2 matches 1 if block ^ ^ ^-.1 #minecraft:shulker_boxes[facing=west] run scoreboard players set @s tcc.dummy2 1
