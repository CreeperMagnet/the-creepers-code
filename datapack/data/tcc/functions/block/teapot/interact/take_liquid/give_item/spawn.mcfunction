############################################################
# Sets inventory stuff for players clicking teapots
############################################################

execute if data storage tcc:storage root.temp.tea{id:"amenable"} run loot spawn ~ ~ ~ loot tcc:items/tea/amenable
execute if data storage tcc:storage root.temp.tea{id:"water"} run give @s minecraft:potion{Potion:"minecraft:water"}

execute if data storage tcc:storage root.temp.tea{id:"antitoxin",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/antitoxin
execute if data storage tcc:storage root.temp.tea{id:"clearsight",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/clearsight
execute if data storage tcc:storage root.temp.tea{id:"illumination",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/illumination
execute if data storage tcc:storage root.temp.tea{id:"obscurity",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/obscurity
execute if data storage tcc:storage root.temp.tea{id:"plenty",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/plenty
execute if data storage tcc:storage root.temp.tea{id:"purity",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/purity
execute if data storage tcc:storage root.temp.tea{id:"serendipity",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/serendipity
execute if data storage tcc:storage root.temp.tea{id:"stability",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/stability
execute if data storage tcc:storage root.temp.tea{id:"steadiness",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/steadiness
execute if data storage tcc:storage root.temp.tea{id:"vigor",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/vigor
execute if data storage tcc:storage root.temp.tea{id:"vitality",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/vitality
execute if data storage tcc:storage root.temp.tea{id:"vivacity",extended:0b} run loot spawn ~ ~ ~ loot tcc:items/tea/vivacity

execute if data storage tcc:storage root.temp.tea{id:"antitoxin",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/antitoxin
execute if data storage tcc:storage root.temp.tea{id:"clearsight",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/clearsight
execute if data storage tcc:storage root.temp.tea{id:"illumination",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/illumination
execute if data storage tcc:storage root.temp.tea{id:"obscurity",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/obscurity
execute if data storage tcc:storage root.temp.tea{id:"plenty",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/plenty
execute if data storage tcc:storage root.temp.tea{id:"purity",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/purity
execute if data storage tcc:storage root.temp.tea{id:"serendipity",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/serendipity
execute if data storage tcc:storage root.temp.tea{id:"stability",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/stability
execute if data storage tcc:storage root.temp.tea{id:"steadiness",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/steadiness
execute if data storage tcc:storage root.temp.tea{id:"vigor",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/vigor
execute if data storage tcc:storage root.temp.tea{id:"vitality",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/vitality
execute if data storage tcc:storage root.temp.tea{id:"vivacity",extended:1b} run loot spawn ~ ~ ~ loot tcc:items/tea/extended/vivacity