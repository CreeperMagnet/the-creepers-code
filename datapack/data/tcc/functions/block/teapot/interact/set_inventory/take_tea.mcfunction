############################################################
# Description: Sets inventory stuff for players clicking teapots
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
tag @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] add tcc.tag
execute if entity @s[tag=!tcc.tag,gamemode=!creative] run item entity @s weapon.mainhand modify tcc:reduce_count

execute if data storage tcc:storage root.temp{tea:"amenable"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/amenable
execute if data storage tcc:storage root.temp{tea:"amenable"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/amenable
execute if data storage tcc:storage root.temp{tea:"antitoxin",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/antitoxin
execute if data storage tcc:storage root.temp{tea:"antitoxin",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/antitoxin
execute if data storage tcc:storage root.temp{tea:"clearsight",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/clearsight
execute if data storage tcc:storage root.temp{tea:"clearsight",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/clearsight
execute if data storage tcc:storage root.temp{tea:"obscurity",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/obscurity
execute if data storage tcc:storage root.temp{tea:"obscurity",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/obscurity
execute if data storage tcc:storage root.temp{tea:"plenty",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/plenty
execute if data storage tcc:storage root.temp{tea:"plenty",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/plenty
execute if data storage tcc:storage root.temp{tea:"purity",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/purity
execute if data storage tcc:storage root.temp{tea:"purity",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/purity
execute if data storage tcc:storage root.temp{tea:"serendipity",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/serendipity
execute if data storage tcc:storage root.temp{tea:"serendipity",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/serendipity
execute if data storage tcc:storage root.temp{tea:"stability",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/stability
execute if data storage tcc:storage root.temp{tea:"stability",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/stability
execute if data storage tcc:storage root.temp{tea:"steadiness",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/steadiness
execute if data storage tcc:storage root.temp{tea:"steadiness",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/steadiness
execute if data storage tcc:storage root.temp{tea:"vigor",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/vigor
execute if data storage tcc:storage root.temp{tea:"vigor",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/vigor
execute if data storage tcc:storage root.temp{tea:"vitality",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/vitality
execute if data storage tcc:storage root.temp{tea:"vitality",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/vitality
execute if data storage tcc:storage root.temp{tea:"vivacity",extended:0b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/vivacity
execute if data storage tcc:storage root.temp{tea:"vivacity",extended:0b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/vivacity

execute if data storage tcc:storage root.temp{tea:"antitoxin",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/antitoxin
execute if data storage tcc:storage root.temp{tea:"antitoxin",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/antitoxin
execute if data storage tcc:storage root.temp{tea:"clearsight",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/clearsight
execute if data storage tcc:storage root.temp{tea:"clearsight",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/clearsight
execute if data storage tcc:storage root.temp{tea:"obscurity",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/obscurity
execute if data storage tcc:storage root.temp{tea:"obscurity",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/obscurity
execute if data storage tcc:storage root.temp{tea:"plenty",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/plenty
execute if data storage tcc:storage root.temp{tea:"plenty",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/plenty
execute if data storage tcc:storage root.temp{tea:"purity",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/purity
execute if data storage tcc:storage root.temp{tea:"purity",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/purity
execute if data storage tcc:storage root.temp{tea:"serendipity",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/serendipity
execute if data storage tcc:storage root.temp{tea:"serendipity",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/serendipity
execute if data storage tcc:storage root.temp{tea:"stability",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/stability
execute if data storage tcc:storage root.temp{tea:"stability",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/stability
execute if data storage tcc:storage root.temp{tea:"steadiness",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/steadiness
execute if data storage tcc:storage root.temp{tea:"steadiness",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/steadiness
execute if data storage tcc:storage root.temp{tea:"vigor",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/vigor
execute if data storage tcc:storage root.temp{tea:"vigor",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/vigor
execute if data storage tcc:storage root.temp{tea:"vitality",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/vitality
execute if data storage tcc:storage root.temp{tea:"vitality",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/vitality
execute if data storage tcc:storage root.temp{tea:"vivacity",extended:1b} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/tea/extended/vivacity
execute if data storage tcc:storage root.temp{tea:"vivacity",extended:1b} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/tea/extended/vivacity

playsound tcc:item.teacup.fill player @a[distance=..16]
tag @s remove tcc.tag
