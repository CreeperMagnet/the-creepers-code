############################################################
# Commands to run on soul seer click
############################################################

advancement revoke @s only tcc:technical/item_used_on_block/activate_soul_seer
item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count/1
execute anchored eyes run function tcc:block/soul_seer/glow/raycast
