############################################################
# Fills the dropper with items based on the comparator score
############################################################

scoreboard players reset @s tcc.soul_seer_cooldown
execute store result score @s tcc.dummy run data get entity @s item.tag.comparator
execute if score @s tcc.dummy matches ..0 run return 0
execute if score @s tcc.dummy matches 16.. run data modify entity @s item.tag.comparator set value 15
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.macro_input.value set from entity @s item.tag.comparator
function tcc:block/soul_seer/glow/comparator_macro with storage tcc:storage root.temp.macro_input