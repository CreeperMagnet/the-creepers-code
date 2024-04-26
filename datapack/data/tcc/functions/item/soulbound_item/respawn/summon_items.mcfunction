# Resummons the needed items from the array

summon minecraft:item ~ ~ ~ {Tags:["tcc.newly_spawned_soulbound_item"],Item:{id:"minecraft:stone",count:1}}
execute as @e[limit=1,tag=tcc.newly_spawned_soulbound_item,type=minecraft:item] run function tcc:item/soulbound_item/respawn/as_item
data remove storage tcc:temp root.dropped_soulbound_items[0].Items[0]
execute if data storage tcc:temp root.dropped_soulbound_items[0].Items[0] run function tcc:item/soulbound_item/respawn/summon_items