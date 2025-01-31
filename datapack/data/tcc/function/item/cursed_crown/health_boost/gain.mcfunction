# Updates your cursed crown health when you gain the health boost effect

advancement revoke @s only tcc:technical/effects_changed/gain_health_boost_with_cursed_crown
execute store result score @s tcc.dummy run attribute @s max_health get
execute if score @s tcc.dummy matches ..2 run return fail
tag @s add tcc.cursed_crown.health_boost
execute if score @s tcc.cursed_crown_cooldown matches 1.. run return run function tcc:item/cursed_crown/health_boost/gain_during_cooldown
function tcc:item/cursed_crown/absorption/set_maximum
