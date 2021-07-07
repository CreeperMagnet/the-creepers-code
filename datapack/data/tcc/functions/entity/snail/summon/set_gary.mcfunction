############################################################
# Description: Sets tags for the "gary" easter egg
# Creator: CreeperMagnet_
############################################################

execute unless data storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.Tags run data modify storage tcc:storage
execute unless data storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.Tags run data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.Tags set value ["tcc.entity","tcc.snail","tcc.trader_entity","tcc.snail.start","global.ignore","tcc.snail.gary"]
data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.Tags append value "tcc.snail.gary"
execute unless data storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.ArmorItems[3] run data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.ArmorItems set value [{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{tcc:{storage:{model_items:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330022}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330022}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330022}}]}},CustomModelData:330000}}]
execute unless data storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.HandItems[0] run data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.HandItems set value [{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330022,display:{color:16777215}}}]
data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.ArmorItems[3].tag.tcc.storage.model_items[0].tag.CustomModelData set value 330022
data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.ArmorItems[3].tag.tcc.storage.model_items[1].tag.CustomModelData set value 330022
data modify storage tcc:storage root.temp.snail_bucket.tag.tcc.snail.HandItems[0].tag.CustomModelData set value 330022
