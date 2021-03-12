############################################################
# Description: Commands for the boomerang hitting a block and breaking
# Creator: CreeperMagnet_
############################################################
execute if entity @s[tag=!tcc.boomerang.dead] run summon item ~ ~ ~ {Tags:["tcc.replace_item","global.ignore"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:330004}}}
execute if entity @s[tag=!tcc.boomerang.dead] run data modify entity @e[type=item,limit=1,tag=tcc.replace_item] Item.tag set from entity @s ArmorItems[3].tag
execute if entity @s[tag=!tcc.boomerang.dead] run tag @e[type=item,limit=1,tag=tcc.replace_item] remove tcc.replace_item
tag @s add tcc.boomerang.dead
kill @s
