
data modify storage tcc:storage root.temp.coords set value [0,0]
execute store result storage tcc:storage root.temp.coords[0] int 1 run data get entity @s Item.tag.Decorations[0].x
execute store result storage tcc:storage root.temp.coords[1] int 1 run data get entity @s Item.tag.Decorations[0].z
