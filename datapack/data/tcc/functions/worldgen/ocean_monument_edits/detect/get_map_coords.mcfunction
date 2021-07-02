
data modify storage tcc:storage root.temp.coords set value [0,0]
execute store result storage tcc:storage root.temp.coords[0] int 1 run data get entity @s Item.tag.Decorations[0].x
execute store result storage tcc:storage root.temp.coords[1] int 1 run data get entity @s Item.tag.Decorations[0].z

data modify storage tcc:storage root.temp.monuments set from storage tcc:storage root.monuments
execute unless data storage tcc:storage root.temp.monuments run scoreboard players set tcc.temp_0 tcc.dummy 0
execute if data storage tcc:storage root.temp.monuments store result score tcc.temp_0 tcc.dummy run data modify storage tcc:storage root.temp.monuments[] set value 0
data modify storage tcc:storage root.temp.monuments set from storage tcc:storage root.monuments
execute unless data storage tcc:storage root.temp.monuments run scoreboard players set tcc.temp_1 tcc.dummy 0
execute if data storage tcc:storage root.temp.monuments store result score tcc.temp_1 tcc.dummy run data modify storage tcc:storage root.temp.monuments[] set from storage tcc:storage root.temp.coords
execute if score tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy run function tcc:worldgen/ocean_monument_edits/detect/spawn_marker
data remove storage tcc:storage root.temp

kill @s
