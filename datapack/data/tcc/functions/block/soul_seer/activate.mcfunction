############################################################
# Activates the soul seer
############################################################

tag @s add tcc.soul_seer.selected
execute unless entity @s[scores={tcc.dummy2=1..}] run function tcc:block/soul_seer/glow
tag @s remove tcc.soul_seer.selected
scoreboard players set @s tcc.soul_seer_cooldown 6