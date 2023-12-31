############################################################
# Rotates a block
############################################################

$execute if block ~ ~ ~ $(block)[waterlogged=false] run function tcc:item/wrench/rotate/macro/hanging_signs/attached/not_waterlogged {block:"$(block)"}
$execute if block ~ ~ ~ $(block)[waterlogged=true] run function tcc:item/wrench/rotate/macro/hanging_signs/attached/waterlogged {block:"$(block)"}