# Commands to break an egg

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:sniffer_egg"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function tcc:block/sprouter_egg/break/kill_item
particle minecraft:item{item:{id:"warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":330299}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 70 normal
kill @s