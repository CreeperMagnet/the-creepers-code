############################################################
# Rotates a block with a furnace blockstate (lit)
############################################################

$execute if block ~ ~ ~ $(block)[lit=true] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"lit=true"}
$execute if block ~ ~ ~ $(block)[lit=false] run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"lit=false"}

