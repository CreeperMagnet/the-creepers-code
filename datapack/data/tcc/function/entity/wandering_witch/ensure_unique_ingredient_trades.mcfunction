# Ensures that the ingredient trades from the wandering witch are unique by looping and checking if the previous and current sells are the same

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_witch/rare_potion_ingredients
scoreboard players reset @s tcc.dummy
data remove storage tcc:temp root
data modify storage tcc:temp root.item set from entity @s Offers.Recipes[-1].sell
execute store success score @s tcc.dummy run data modify storage tcc:temp root.item set from entity @s HandItems[1]
execute if score @s tcc.dummy matches 0 run function tcc:entity/wandering_witch/ensure_unique_ingredient_trades