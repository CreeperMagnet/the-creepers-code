############################################################
# Description: Check if the item frame should pop off
# Creator: Ellivers
############################################################

execute if block ~ ~ ~ #tcc:phantom_item_frame_allowed/all_sides run scoreboard players reset @s tcc.dummy2

execute if block ~ ~ ~ #tcc:horizontally_connectable[north=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:rods[facing=north] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:rods[facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:chain[axis=z] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:chests[facing=west,type=left] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:chests[facing=east,type=right] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:ladder[facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:anvil[facing=north] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:anvil[facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=right] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=left] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:trapdoors unless block ~ ~ ~ #minecraft:trapdoors[facing=north,open=true] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:wall_heads[facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=north] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=west,attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=east,attachment=floor] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=north,attachment=double_wall] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=south,attachment=double_wall] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[facing=north,attachment=single_wall] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #tcc:amethyst_buds[facing=south] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:snow unless block ~ ~ ~ minecraft:snow[layers=1] unless block ~ ~ ~ minecraft:snow[layers=2] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ #minecraft:walls unless block ~ ~ ~ #minecraft:walls[north=none] run scoreboard players set @s tcc.dummy2 1

execute if block ^ ^ ^-.1 #minecraft:shulker_boxes[facing=south] run scoreboard players set @s tcc.dummy2 1
