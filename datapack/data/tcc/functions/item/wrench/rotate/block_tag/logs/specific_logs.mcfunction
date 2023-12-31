############################################################
# Checks a log block tag
############################################################

$execute if block ~ ~ ~ $(type)_log run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:$(type)_log"}
$execute if block ~ ~ ~ $(type)_wood run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:$(type)_wood"}
$execute if block ~ ~ ~ stripped_$(type)_log run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:stripped_$(type)_log"}
$execute if block ~ ~ ~ stripped_$(type)_wood run function tcc:item/wrench/rotate/macro/axis {block:"minecraft:stripped_$(type)_wood"}
