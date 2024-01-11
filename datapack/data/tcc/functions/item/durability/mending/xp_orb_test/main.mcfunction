# Detects XP orbs near you

execute if entity @e[distance=..3,type=minecraft:experience_orb,tag=!smithed.entity] run tag @s add tcc.tag
execute if entity @s[tag=!tcc.saw_xp_orb,tag=tcc.tag] run function tcc:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=tcc.saw_xp_orb,tag=!tcc.tag] run function tcc:item/durability/mending/xp_change_detect
tag @s remove tcc.tag
