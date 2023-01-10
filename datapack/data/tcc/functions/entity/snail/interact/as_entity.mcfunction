############################################################
# Commands to run as the snail found during raycasting
############################################################

tag @p[advancements={tcc:technical/player_interacted_with_entity/snail=true}] add tcc.tag
execute if data storage tcc:storage root.temp.item{id:"minecraft:beetroot"} run function tcc:entity/snail/interact/feed
execute if data storage tcc:storage root.temp.item{id:"minecraft:golden_carrot",tag:{tcc:{id:"heartbeet"}}} run function tcc:entity/snail/interact/feed_heartbeet
execute if data storage tcc:storage root.temp.item{id:"minecraft:beetroot_soup"} run function tcc:entity/snail/interact/breed
execute if data storage tcc:storage root.temp.item{id:"minecraft:bucket"} run function tcc:entity/snail/interact/bucket/main
execute if data storage tcc:storage root.temp.item{id:"minecraft:name_tag"} run function tcc:entity/snail/summon/set_variant/gary