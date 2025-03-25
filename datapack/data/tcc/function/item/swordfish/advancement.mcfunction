# Runs when the player eats a swordfish

tag @s add tcc.scheduled.swordfish_damage
tag @s[advancements={tcc:technical/consume_item/swordfish={sharpness=false,any=true}}] add tcc.scheduled.swordfish_damage.10
tag @s[advancements={tcc:technical/consume_item/swordfish={sharpness_1=true}}] add tcc.scheduled.swordfish_damage.14
tag @s[advancements={tcc:technical/consume_item/swordfish={sharpness_2=true}}] add tcc.scheduled.swordfish_damage.18
tag @s[advancements={tcc:technical/consume_item/swordfish={sharpness_3=true}}] add tcc.scheduled.swordfish_damage.22
tag @s[advancements={tcc:technical/consume_item/swordfish={sharpness_4=true}}] add tcc.scheduled.swordfish_damage.26
tag @s[advancements={tcc:technical/consume_item/swordfish={sharpness_5=true}}] add tcc.scheduled.swordfish_damage.30
schedule function tcc:item/swordfish/scheduled 1t

advancement revoke @s only tcc:technical/consume_item/swordfish