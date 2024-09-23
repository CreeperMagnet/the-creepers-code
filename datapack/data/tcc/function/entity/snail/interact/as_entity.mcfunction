# Commands to run as the snail found during raycasting

tag @p[advancements={tcc:technical/player_interacted_with_entity/snail=true}] add tcc.tag
execute if data storage tcc:temp root.item{id:"minecraft:beetroot"} run function tcc:entity/snail/interact/feed
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"heartbeet"} run function tcc:entity/snail/interact/feed_heartbeet
execute if data storage tcc:temp root.item{id:"minecraft:beetroot_soup"} run function tcc:entity/snail/interact/breed
execute if data storage tcc:temp root.item{id:"minecraft:bucket"} run function tcc:entity/snail/interact/bucket/main
execute if data storage tcc:temp root.item{id:"minecraft:name_tag"} run function tcc:entity/snail/summon/set_variant/gary
execute if data storage tcc:temp root.item{id:"minecraft:lead"} run return run function tcc:technical/macros/leash_entity with storage tcc:temp root.macro_input