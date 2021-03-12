############################################################
# Description: Turns the wandering trader back into a witch, and keeps the witch data
# Creator: Ellivers
############################################################

summon witch ~ ~ ~ {Tags:["tcc.witch_trader"],ArmorItems:[{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000,trader_data:{}}},{},{}]}
tp @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] @s
data remove entity @s ArmorItems[1].tag.witch_data.Pos
data remove entity @s ArmorItems[1].tag.witch_data.Motion
data remove entity @s ArmorItems[1].tag.witch_data.Rotation
data remove entity @s ArmorItems[1].tag.witch_data.HurtTime
data remove entity @s ArmorItems[1].tag.witch_data.ArmorItems
data modify entity @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] {} merge from entity @s ArmorItems[1].tag.witch_data
execute unless data entity @s {HurtTime:0s} run effect give @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] instant_damage 1 31 true
data modify entity @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] ArmorItems[1].tag.trader_data set from entity @s
particle minecraft:witch ~ ~2.5 ~ 0.1 0.5 0.1 0 100 force
tp ~ -1000 ~
kill @s
