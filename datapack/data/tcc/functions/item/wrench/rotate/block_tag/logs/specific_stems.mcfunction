############################################################
# Checks a log block tag
############################################################

$execute if block ~ ~ ~ $(type)_stem run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:$(type)_stem"}
$execute if block ~ ~ ~ $(type)_hyphae run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:$(type)_hyphae"}
$execute if block ~ ~ ~ stripped_$(type)_stem run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:stripped_$(type)_stem"}
$execute if block ~ ~ ~ stripped_$(type)_hyphae run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:stripped_$(type)_hyphae"}
