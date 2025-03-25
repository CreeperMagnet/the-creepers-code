# Actually deals the swordfish damage

tag @s remove tcc.scheduled.swordfish_damage
damage @s[tag=tcc.scheduled.swordfish_damage.10] 10.0 tcc:swordfish by @s from @s
damage @s[tag=tcc.scheduled.swordfish_damage.14] 14.0 tcc:swordfish by @s from @s
damage @s[tag=tcc.scheduled.swordfish_damage.18] 18.0 tcc:swordfish by @s from @s
damage @s[tag=tcc.scheduled.swordfish_damage.22] 22.0 tcc:swordfish by @s from @s
damage @s[tag=tcc.scheduled.swordfish_damage.26] 26.0 tcc:swordfish by @s from @s
damage @s[tag=tcc.scheduled.swordfish_damage.30] 30.0 tcc:swordfish by @s from @s
advancement grant @s[gamemode=!creative,nbt=!{Health:0.0f},tag=tcc.scheduled.swordfish_damage.30] only tcc:minecraft/husbandry/swordfish
tag @s remove tcc.scheduled.swordfish_damage.10
tag @s remove tcc.scheduled.swordfish_damage.14
tag @s remove tcc.scheduled.swordfish_damage.18
tag @s remove tcc.scheduled.swordfish_damage.22
tag @s remove tcc.scheduled.swordfish_damage.26
tag @s remove tcc.scheduled.swordfish_damage.30