# Commands to run as the gobblerift interacted with

execute if entity @s[tag=tcc.gobblerift.bonemealable] unless data storage tcc:temp root.creative if data storage tcc:temp root.item{id:"minecraft:bone_meal"} run function tcc:block/gobblerift/interact/bone_meal/survival
execute if entity @s[tag=tcc.gobblerift.bonemealable] if data storage tcc:temp root{creative:1b,item:{id:"minecraft:bone_meal"}} run function tcc:block/gobblerift/interact/bone_meal/creative
execute if entity @s[tag=tcc.gobblerift.hungry] unless data storage tcc:temp root.creative if data storage tcc:temp root{meat:1b} run function tcc:block/gobblerift/interact/feed/survival
execute if entity @s[tag=tcc.gobblerift.hungry] if data storage tcc:temp root{creative:1b,meat:1b} run function tcc:block/gobblerift/interact/feed/creative
execute if entity @s[tag=tcc.gobblerift.juice_ready] unless data storage tcc:temp root.creative if data storage tcc:temp root.item{id:"minecraft:glass_bottle"} run function tcc:block/gobblerift/interact/juice/survival
execute if entity @s[tag=tcc.gobblerift.juice_ready] if data storage tcc:temp root{creative:1b,item:{id:"minecraft:glass_bottle"}} run function tcc:block/gobblerift/interact/juice/creative
execute unless data storage tcc:temp root.creative if data storage tcc:temp root{item:{id:"minecraft:name_tag"}} if data storage tcc:temp root.item.components."minecraft:custom_name" on target run item modify entity @s weapon.mainhand tcc:reduce_count
execute if data storage tcc:temp root.item{id:"minecraft:name_tag"} if data storage tcc:temp root.item.components."minecraft:custom_name" on vehicle run data modify entity @s CustomName set from storage tcc:temp root.item.components."minecraft:custom_name"