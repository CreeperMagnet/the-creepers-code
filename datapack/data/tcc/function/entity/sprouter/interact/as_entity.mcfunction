# Commands to run as the sprouter found during raycasting

tag @p[advancements={tcc:technical/player_interacted_with_entity/sprouter=true}] add tcc.tag
execute if data storage tcc:temp root.item{id:"minecraft:shears"} run return run function tcc:entity/sprouter/interact/shear
execute if entity @s[tag=tcc.baby] run return run function tcc:entity/sprouter/interact/feed_baby
function tcc:entity/sprouter/interact/breed
