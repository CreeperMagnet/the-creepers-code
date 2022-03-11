############################################################
# Commands to run as the gobblerift found during raycasting
############################################################

tag @p[advancements={tcc:technical/player_interacted_with_entity/gobblerift=true}] add tcc.tag
execute if data storage tcc:storage root.temp{creative:0b,item:{id:"minecraft:bone_meal"}} run function tcc:block/gobblerift/interact/bone_meal/survival
execute if data storage tcc:storage root.temp{creative:1b,item:{id:"minecraft:bone_meal"}} run function tcc:block/gobblerift/interact/bone_meal/creative
execute if data storage tcc:storage root.temp{creative:0b,meat:1b} run function tcc:block/gobblerift/interact/feed/survival
execute if data storage tcc:storage root.temp{creative:1b,meat:1b} run function tcc:block/gobblerift/interact/feed/creative
execute if data storage tcc:storage root.temp{creative:0b,item:{id:"minecraft:glass_bottle"}} run function tcc:block/gobblerift/interact/juice/survival
execute if data storage tcc:storage root.temp{creative:1b,item:{id:"minecraft:glass_bottle"}} run function tcc:block/gobblerift/interact/juice/creative

data modify entity @s ArmorItems[3].tag.tcc.gobblerift_break_state set value 0