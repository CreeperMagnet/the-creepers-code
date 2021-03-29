############################################################
# Description: Check if the item frame should pop off
# Creator: Ellivers
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
execute if block ~ ~ ~ #tcc:amethyst_buds[facing=up] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:snow unless block ~ ~ ~ minecraft:snow[layers=1] run scoreboard players set @s tcc.dummy2 1
execute if block ~ ~ ~ minecraft:bell[attachment=floor] run scoreboard players set @s tcc.dummy2 1

execute if block ^ ^ ^-.1 #minecraft:shulker_boxes[facing=up] run scoreboard players set @s tcc.dummy2 1
