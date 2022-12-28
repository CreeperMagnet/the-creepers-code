############################################################
# Creates ice at proper level depending on if ridden horse is skeleton or not
############################################################

execute if entity @s[tag=!tcc.on_skeleton_horse] positioned ~ ~-1.84 ~ if block ~ ~1.84 ~ air positioned ~-3 ~-0.1 ~-3 run function tcc:entity/horse_frost_trotting/fill_check
execute if entity @s[tag=tcc.on_skeleton_horse] positioned ~ ~-1.65 ~ if block ~ ~1.65 ~ air positioned ~-3 ~-0.1 ~-3 run function tcc:entity/horse_frost_trotting/fill_check
