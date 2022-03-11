summon marker ~ ~ ~ {Tags:["tcc.monument.checked_area"]}

data modify storage tcc:storage root.temp.coords set value [0,0]
execute store result storage tcc:storage root.temp.coords[0] int 1 run data get entity @s Item.tag.Decorations[0].x
execute store result storage tcc:storage root.temp.coords[1] int 1 run data get entity @s Item.tag.Decorations[0].z

data modify storage tcc:storage root.temp.monuments set from storage tcc:storage root.monuments
execute unless data storage tcc:storage root.temp.monuments run scoreboard players set #temp_0 tcc.dummy 0
execute if data storage tcc:storage root.temp.monuments store result score #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.monuments[] set value 0
data modify storage tcc:storage root.temp.monuments set from storage tcc:storage root.monuments
execute unless data storage tcc:storage root.temp.monuments run scoreboard players set #temp_1 tcc.dummy 0
execute if data storage tcc:storage root.temp.monuments store result score #temp_1 tcc.dummy run data modify storage tcc:storage root.temp.monuments[] set from storage tcc:storage root.temp.coords
execute if score #temp_0 tcc.dummy = #temp_1 tcc.dummy run function tcc:postgen/ocean_monument_edits/detect/spawn_marker
data remove storage tcc:storage root.temp

kill @s
