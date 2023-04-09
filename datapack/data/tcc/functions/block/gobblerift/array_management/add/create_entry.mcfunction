############################################################
# Creates a new entry
############################################################

data modify storage tcc:storage root.gobblerift_data.array append value {pos:[0,0,0],dimension:""}
execute store result storage tcc:storage root.gobblerift_data.array[-1].id int 1 run scoreboard players get #temp tcc.dummy
execute store result storage tcc:storage root.gobblerift_data.array[-1].pos[0] int 1 run data get entity @s Pos[0]
execute store result storage tcc:storage root.gobblerift_data.array[-1].pos[1] int 1 run data get entity @s Pos[1]
execute store result storage tcc:storage root.gobblerift_data.array[-1].pos[2] int 1 run data get entity @s Pos[2]
data modify storage tcc:storage root.gobblerift_data.array[-1].dimension set from entity @s item.tag.dimension