# Commands to run as the entity that is selected

# Give self glowing effect
execute unless data storage tcc:temp root.soul_seer_blocked run effect give @s minecraft:glowing 10 0 true

# Increment the comparator tag for the soul seer
execute as @n[tag=tcc.soul_seer.selected,type=minecraft:item_display] run function tcc:block/soul_seer/glow/increment_comparator