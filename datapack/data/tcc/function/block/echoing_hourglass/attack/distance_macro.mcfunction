# Executes commands as the interaction entity you just attacked

$execute as @e[type=minecraft:interaction,tag=tcc.echoing_hourglass.interaction,distance=..$(distance),nbt={attack:{}}] at @s run function tcc:block/echoing_hourglass/attack/as_interaction
