############################################################
# Rotates a block with a cardinal facing blockstate that's waterloggable
############################################################

execute if block ~ ~ ~ minecraft:ender_chest run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:ender_chest"}
execute if block ~ ~ ~ minecraft:decorated_pot run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable {block:"minecraft:decorated_pot"}
