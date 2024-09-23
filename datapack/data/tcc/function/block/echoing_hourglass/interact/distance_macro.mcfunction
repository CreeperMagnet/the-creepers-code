# Executes commands as the interaction entity you just clicked

$execute as @e[type=minecraft:interaction,tag=tcc.echoing_hourglass.interaction,distance=..$(distance),nbt={interaction:{}}] at @s run function tcc:block/echoing_hourglass/interact/as_interaction
