############################################################
# Commands to give the witch trades
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.UUID set from entity @s UUID
summon trader_llama ~0.1 ~ ~ {DespawnDelay:47999,Tags:["tcc.wandering_witch_llama.newly_spawned","tcc.modified_vanilla_entity","tcc.wandering_witch_llama","tcc.ten_second_clock"],DecorItem:{id:"minecraft:black_carpet",Count:1b},Variant:3,Tame:1b,ChestedHorse:1b,Strength:5}
execute as @e[type=trader_llama,limit=1,tag=tcc.wandering_witch_llama.newly_spawned] run function tcc:entity/wandering_witch/initiate_llama

data remove entity @s Offers.Recipes

loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/slime_balls
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/soil_blocks
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/rare_potion_ingredients
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/potion_dusts
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/ender_pearl
function tcc:entity/wandering_witch/add_trade


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/ancient_explorer_map
function tcc:entity/wandering_witch/add_trade
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:map"}}]}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:sculk_catalyst",Count:1b}


loot replace entity @s weapon.mainhand 2 loot tcc:gameplay/trades/wandering_witch/witch_hat
function tcc:entity/wandering_witch/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1b

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

tag @s remove tcc.wandering_witch.newly_spawned
