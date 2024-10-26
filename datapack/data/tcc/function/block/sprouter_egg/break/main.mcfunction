# Commands to break an egg

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:sniffer_egg"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function tcc:block/sprouter_egg/break/kill_item
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/sprouter_egg/stage_0"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 70 normal
kill @s