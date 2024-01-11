# Tests if your XP level was changed by an XP orb

# Calculations for if your xp level changed or not
scoreboard players operation @s tcc.old_xp -= @s tcc.current_xp
tag @s remove tcc.saw_xp_orb
execute if score @s tcc.old_xp matches ..-1 run function tcc:item/durability/mending/repair_item
scoreboard players reset @s tcc.old_xp
