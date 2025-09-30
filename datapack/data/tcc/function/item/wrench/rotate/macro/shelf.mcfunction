# Rotates a shelf block

$execute if block ~ ~ ~ $(block)[powered=true] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"powered=true"}
$execute if block ~ ~ ~ $(block)[powered=false] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"powered=false"}
