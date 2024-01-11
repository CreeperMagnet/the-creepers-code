# Fills a teapot, setting tags and visuals

execute if data storage tcc:storage root.temp.item{id:"minecraft:dandelion"} run data modify entity @s item.tag.tea set value {id:"steadiness",color:16772175,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:wither_rose"} run data modify entity @s item.tag.tea set value {id:"purity",color:4338990,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:torchflower"} run data modify entity @s item.tag.tea set value {id:"clearsight",color:15233650,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:ink_sac"} run data modify entity @s item.tag.tea set value {id:"obscurity",color:6513542,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:rabbit_foot"} run data modify entity @s item.tag.tea set value {id:"serendipity",color:8440710,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:honey_bottle"} run data modify entity @s item.tag.tea set value {id:"antitoxin",color:16748822,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:sweet_berries"} run data modify entity @s item.tag.tea set value {id:"plenty",color:10815232,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:echo_shard"} run data modify entity @s item.tag.tea set value {id:"illumination",color:675936,extended:0b}
execute if data storage tcc:storage root.temp.item{id:"minecraft:wet_sponge"} run data modify entity @s item.tag.tea set value {id:"vitality",color:9818055,extended:0b}
execute if data storage tcc:storage root.temp.item{tag:{tcc:{id:"frostbloom_petals"}}} run data modify entity @s item.tag.tea set value {id:"vivacity",color:9286646,extended:0b}
execute if data storage tcc:storage root.temp.item{tag:{tcc:{id:"riftjuice_bottle"}}} run data modify entity @s item.tag.tea set value {id:"stability",color:12414171,extended:0b}
execute if data storage tcc:storage root.temp.item{tag:{tcc:{id:"sightless_eye"}}} run data modify entity @s item.tag.tea set value {id:"vigor",color:11448204,extended:0b}