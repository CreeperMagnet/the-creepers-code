# Updates your cursed crown health when you lose the health boost effect

advancement revoke @s only tcc:technical/effects_changed/lose_health_boost_with_cursed_crown
tag @s remove tcc.cursed_crown.health_boost
execute if score @s tcc.cursed_crown_cooldown matches 1.. run return run function tcc:item/cursed_crown/health_boost/lose_during_cooldown
function tcc:item/cursed_crown/absorption/set_maximum
