############################################################
# Description: Sets inventory stuff for players clicking teapots
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
tag @s[nbt={SelectedItem:{Count:1b}},gamemode=!creative] add tcc.tag
execute if entity @s[tag=!tcc.tag,gamemode=!creative] run item entity @s weapon.mainhand modify tcc:reduce_count
execute if data storage tcc:storage root.temp{tea:"amenable"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/amenable_tea
execute if data storage tcc:storage root.temp{tea:"amenable"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/amenable_tea
execute if data storage tcc:storage root.temp{tea:"antitoxin"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/antitoxin_tea
execute if data storage tcc:storage root.temp{tea:"antitoxin"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/antitoxin_tea
execute if data storage tcc:storage root.temp{tea:"clearsight"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/clearsight_tea
execute if data storage tcc:storage root.temp{tea:"clearsight"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/clearsight_tea
execute if data storage tcc:storage root.temp{tea:"obscurity"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/obscurity_tea
execute if data storage tcc:storage root.temp{tea:"obscurity"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/obscurity_tea
execute if data storage tcc:storage root.temp{tea:"plenty"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/plenty_tea
execute if data storage tcc:storage root.temp{tea:"plenty"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/plenty_tea
execute if data storage tcc:storage root.temp{tea:"purity"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/purity_tea
execute if data storage tcc:storage root.temp{tea:"purity"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/purity_tea
execute if data storage tcc:storage root.temp{tea:"serendipity"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/serendipity_tea
execute if data storage tcc:storage root.temp{tea:"serendipity"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/serendipity_tea
execute if data storage tcc:storage root.temp{tea:"stability"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/stability_tea
execute if data storage tcc:storage root.temp{tea:"stability"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/stability_tea
execute if data storage tcc:storage root.temp{tea:"steadiness"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/steadiness_tea
execute if data storage tcc:storage root.temp{tea:"steadiness"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/steadiness_tea
execute if data storage tcc:storage root.temp{tea:"vigor"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/vigor_tea
execute if data storage tcc:storage root.temp{tea:"vigor"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/vigor_tea
execute if data storage tcc:storage root.temp{tea:"vitality"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/vitality_tea
execute if data storage tcc:storage root.temp{tea:"vitality"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/vitality_tea
execute if data storage tcc:storage root.temp{tea:"vivacity"} if entity @s[tag=tcc.tag] run loot replace entity @s weapon.mainhand loot tcc:items/vivacity_tea
execute if data storage tcc:storage root.temp{tea:"vivacity"} if entity @s[tag=!tcc.tag] run loot give @s loot tcc:items/vivacity_tea
playsound tcc:item.teacup.fill player @a[distance=..16]
tag @s remove tcc.tag
