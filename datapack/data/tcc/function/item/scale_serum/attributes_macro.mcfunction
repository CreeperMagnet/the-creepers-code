# Sets your attributes properly using a macro

function tcc:item/scale_serum/reset_attributes
$attribute @s minecraft:player.block_interaction_range modifier add tcc:scale_serum $(block_interaction_range) add_value
$attribute @s minecraft:player.entity_interaction_range modifier add tcc:scale_serum $(entity_interaction_range) add_value
$attribute @s minecraft:generic.jump_strength modifier add tcc:scale_serum $(jump_strength) add_value
$attribute @s minecraft:generic.scale modifier add tcc:scale_serum $(scale) add_value
$attribute @s minecraft:generic.safe_fall_distance modifier add tcc:scale_serum $(safe_fall_distance) add_value