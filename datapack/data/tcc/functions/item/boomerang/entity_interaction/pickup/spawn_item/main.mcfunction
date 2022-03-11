############################################################
# Commands for creating a spawned item
############################################################

summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:stone",Count:1b},Tags:["tcc.replace_item"]}
execute as @e[tag=tcc.replace_item,limit=1] run function tcc:item/boomerang/entity_interaction/pickup/spawn_item/as_item
