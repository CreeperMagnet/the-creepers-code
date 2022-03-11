############################################################
# Fills a positional anchor
############################################################

execute as @e[dx=0,type=armor_stand,tag=tcc.positional_anchor,tag=!tcc.positional_anchor.filled,limit=1] run function tcc:block/positional_anchor/fill/modify_entity
