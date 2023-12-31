advancement revoke @s only tcc:technical/item_used_on_block/potted_plant
scoreboard players reset #recurse tcc.dummy
execute anchored eyes run function tcc:block/potted_plant/place/raycast
