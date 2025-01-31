# Creates a new entry

data modify storage tcc:creaking_connector_data array append value {pos:[0,0,0]}
$data modify storage tcc:creaking_connector_data array[-1].id set value $(id)
execute store result storage tcc:creaking_connector_data array[-1].pos[0] int 1 run data get entity @s Pos[0]
execute store result storage tcc:creaking_connector_data array[-1].pos[1] int 1 run data get entity @s Pos[1]
execute store result storage tcc:creaking_connector_data array[-1].pos[2] int 1 run data get entity @s Pos[2]