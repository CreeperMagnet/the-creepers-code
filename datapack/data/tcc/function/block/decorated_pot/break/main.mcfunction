# Commands to break a decorated pot

scoreboard players set #temp_0 tcc.dummy 0
data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s item.components."minecraft:custom_data".item
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:pot_decorations":["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]},id:"minecraft:decorated_pot"}},nbt=!{Item:{components:{"minecraft:custom_data":{tcc:{}}}}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] run function tcc:block/decorated_pot/break/as_item
execute unless score #temp_0 tcc.dummy matches 1.. run function tcc:block/decorated_pot/break/summon_sherds/main
function tcc:block/break_particles/spawn_generic
kill @s
