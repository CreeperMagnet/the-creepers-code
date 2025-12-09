# Checks fence gate if open or not

$execute if block ~ ~ ~ $(block)[open=false] run return run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"open=false"}
$execute if block ~ ~ ~ $(block) run function tcc:item/wrench/rotate/macro/facing_cardinal_extra_blockstate {block:"$(block)",blockstate:"open=true"}
