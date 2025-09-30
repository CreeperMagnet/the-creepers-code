# Rotates a copper golem statue type block

$execute if block ~ ~ ~ $(block)[copper_golem_pose=standing] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"copper_golem_pose=standing"}
$execute if block ~ ~ ~ $(block)[copper_golem_pose=sitting] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"copper_golem_pose=sitting"}
$execute if block ~ ~ ~ $(block)[copper_golem_pose=running] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"copper_golem_pose=running"}
$execute if block ~ ~ ~ $(block)[copper_golem_pose=star] run function tcc:item/wrench/rotate/macro/facing_cardinal_waterloggable_extra_blockstate {block:"$(block)",blockstate:"copper_golem_pose=star"}