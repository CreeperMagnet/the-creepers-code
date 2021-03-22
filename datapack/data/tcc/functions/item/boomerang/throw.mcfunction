############################################################
# Description: Throws the boomerang from a player's hand
# Creator: CreeperMagnet_
############################################################

execute if entity @s[gamemode=!creative] run function tcc:item/item_modification/durability/damage/mainhand
summon armor_stand ^ ^ ^ {ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{tcc:{UUID:[I;0,0,0,0]}}},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330004}}],DisabledSlots:2096896,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["tcc.entity","tcc.boomerang","tcc.boomerang.start","global.ignore"]}
data modify entity @e[type=armor_stand,limit=1,tag=tcc.boomerang.start,sort=nearest,distance=..10] ArmorItems[3].tag set from entity @s SelectedItem.tag
data modify entity @e[type=armor_stand,limit=1,tag=tcc.boomerang.start,sort=nearest,distance=..10] ArmorItems[0].tag.tcc.UUID set from entity @s UUID
data merge storage tcc:storage {root:{temp:{boomerang:{owner:[I; 0, 0, 0, 0]}}}}
data modify storage tcc:storage root.temp.boomerang.owner set from entity @s UUID
item entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand replace air
execute anchored eyes run tp @e[type=armor_stand,limit=1,tag=tcc.boomerang.start,sort=nearest,distance=..10] ^ ^ ^ ~ ~
execute as @e[type=armor_stand,limit=1,tag=tcc.boomerang.start,sort=nearest,distance=..10] at @s run tp @s ~ ~-0.5 ~
tag @e[type=armor_stand,tag=tcc.boomerang.start,sort=arbitrary] remove tcc.boomerang.start
