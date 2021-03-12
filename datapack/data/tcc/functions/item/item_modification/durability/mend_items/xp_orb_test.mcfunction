############################################################
# Description: Detects XP orbs near you
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=!tcc.mending_repaired] positioned ~ ~0.805 ~ if entity @e[distance=..3,type=experience_orb,tag=!global.ignore] run scoreboard players operation @s tcc.old_xp = @s tcc.current_xp
execute positioned ~ ~0.805 ~ if entity @e[distance=..3,type=experience_orb,tag=!global.ignore] run tag @s add tcc.mending_repaired
execute if entity @s[tag=tcc.mending_repaired] positioned ~ ~0.805 ~ unless entity @e[distance=..3,type=experience_orb,tag=!global.ignore] run function tcc:item/item_modification/durability/mend_items/xp_change_detect
