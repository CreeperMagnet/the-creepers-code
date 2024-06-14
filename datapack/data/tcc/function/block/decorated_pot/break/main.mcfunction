# Commands to break a decorated pot

scoreboard players set #temp_0 tcc.dummy 0
data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s item.components."minecraft:custom_data".item
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:pot_decorations":["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]},id:"minecraft:decorated_pot"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] run function tcc:block/decorated_pot/break/as_item
execute unless score #temp_0 tcc.dummy matches 1.. run function tcc:block/decorated_pot/break/summon_sherds/main
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{item:{components:{"minecraft:custom_data":{tcc:{type:"nether_brick"}}}}}}}}] run particle minecraft:item{item:{id:"minecraft:decorated_pot",components:{"minecraft:custom_model_data":330000}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{item:{components:{"minecraft:custom_data":{tcc:{type:"prismarine"}}}}}}}}] run particle minecraft:item{item:{id:"minecraft:decorated_pot",components:{"minecraft:custom_model_data":331616}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute on passengers run kill @s
kill @s
