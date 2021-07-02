############################################################
# Description: A crafting recipe with NBT
# Creator: CreeperMagnet_
############################################################

clear @s knowledge_book
stopsound @s * minecraft:entity.item.pickup
function tcc:entity/player/nbt_recipe/take_recipe
scoreboard players reset @s tcc.crafted_item
