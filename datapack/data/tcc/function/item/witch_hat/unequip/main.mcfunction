# Commands for unequipping a witch hat

data remove storage tcc:temp root

function tcc:item/find_items/common_start {data:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{tcc:{id:"witch_hat"}}}},function:'tcc:item/witch_hat/unequip/replace_wfoas_with_leather_helmet'}

advancement revoke @s only tcc:technical/inventory_changed/witch_hat/unequip
