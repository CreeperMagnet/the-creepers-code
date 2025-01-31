# Runs when the player has a non-retextured saplink named "sonic screwdriver"

data remove storage tcc:temp root
function tcc:item/find_items/common_start {data:{components:{"minecraft:custom_data":{tcc:{id:"saplink"}},"minecraft:custom_name":'"Sonic Screwdriver"'}},function:'tcc:item/saplink/sonic_screwdriver/item_found'}
advancement revoke @s only tcc:technical/inventory_changed/sonic_screwdriver_saplink