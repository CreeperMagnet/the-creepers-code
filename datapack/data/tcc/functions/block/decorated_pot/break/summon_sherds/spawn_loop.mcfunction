############################################################
# Spawns invalids in item form
############################################################

tag @s remove tcc.tag
execute if predicate tcc:chance/one_half run tag @s add tcc.tag
execute if entity @s[tag=tcc.tag] run summon item ~ ~ ~ {PickupDelay:10s,Motion:[0.05d,0.2d,0.05d],Item:{id:"minecraft:stone",Count:1b},Tags:["tcc.replace_item","smithed.entity"]}
execute if entity @s[tag=!tcc.tag] run summon item ~ ~ ~ {PickupDelay:10s,Motion:[-0.05d,0.2d,0.05d],Item:{id:"minecraft:stone",Count:1b},Tags:["tcc.replace_item","smithed.entity"]}
execute as @e[type=item,limit=1,tag=tcc.replace_item] run function tcc:block/decorated_pot/break/summon_sherds/edit_summoned_sherd
data remove storage tcc:storage root.temp.sherds[0]
execute if data storage tcc:storage root.temp.sherds[0] run function tcc:block/decorated_pot/break/summon_sherds/spawn_loop