# Targets entities within macroed distance

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=tcc.prevents_hoppers] at @s positioned ~ ~-1 ~ run function tcc:block/hopper_updating/fill

