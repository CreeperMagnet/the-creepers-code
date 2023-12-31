############################################################
# Commands to break a decorated pot
############################################################

scoreboard players set #temp_0 tcc.dummy 0
data modify storage tcc:storage root.temp.item_tag set from entity @s item.tag.item_tag
execute as @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={Item:{tag:{BlockEntityTag:{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]}},id:"minecraft:decorated_pot",Count:1b}}] run function tcc:block/decorated_pot/break/as_item
execute unless score #temp_0 tcc.dummy matches 1.. run function tcc:block/decorated_pot/break/summon_sherds/main
execute if entity @s[nbt={item:{tag:{item_tag:{tcc:{type:"nether_brick"}}}}}] run particle minecraft:item minecraft:decorated_pot{CustomModelData:330000} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute if entity @s[nbt={item:{tag:{item_tag:{tcc:{type:"prismarine"}}}}}] run particle minecraft:item minecraft:decorated_pot{CustomModelData:331616} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute on passengers run kill @s
kill @s
