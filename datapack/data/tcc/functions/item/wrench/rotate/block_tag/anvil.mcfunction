############################################################
# Checks a block tag
############################################################

execute if block ~ ~ ~ anvil run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:anvil"}
execute if block ~ ~ ~ chipped_anvil run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:chipped_anvil"}
execute if block ~ ~ ~ damaged_anvil run function tcc:item/wrench/rotate/macro/facing_cardinal {block:"minecraft:damaged_anvil"}
