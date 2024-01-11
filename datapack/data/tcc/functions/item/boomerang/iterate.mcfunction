# Moves the boomerang one block

# Begin loop
scoreboard players add @s tcc.dummy 1

# Interactions with blocks
execute positioned ^ ^ ^0.05 if block ~ ~ ~ #tcc:boomerang/interact run function tcc:item/boomerang/block_interaction/main
execute rotated 0 0 if block ~ ~-0.2 ~ #tcc:boomerang/interact_surface positioned ~ ~-0.3 ~ run function tcc:item/boomerang/block_interaction/surface

# If boomerang is on the way away from the player and hits a block/shulker, it bounces
execute if block ^ ^ ^0.05 #tcc:boomerang/sets_fire if entity @s[tag=!tcc.boomerang.on_fire] run function tcc:item/boomerang/catch_fire
execute if entity @s[scores={tcc.dummy2=..49}] if block ^ ^ ^0.05 #tcc:boomerang/skims_off_surface run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={tcc.dummy2=..49}] unless block ^ ^ ^0.05 #tcc:boomerang/ignore run function tcc:item/boomerang/bounce
execute if entity @s[scores={tcc.dummy2=..49}] positioned ^ ^ ^0.05 if entity @e[type=minecraft:shulker,dx=0] run function tcc:item/boomerang/bounce

# If boomerang *doesn't* hit a block, it moves
execute if block ^ ^ ^0.05 #tcc:boomerang/ignore run tp @s ^ ^ ^0.05

# Store boomerang data for pickup and damage UUID commands
data modify storage tcc:storage root.temp.boomerang set from entity @s item.tag.tcc

# If boomerang is on the way back and hits a block, it breaks
execute if entity @s[scores={tcc.dummy2=50..}] at @s unless block ^ ^ ^0.05 #tcc:boomerang/ignore positioned ^ ^ ^-0.5 run function tcc:item/boomerang/break with storage tcc:storage root.temp.boomerang.macro_input

# Pickup attempt nonsense
execute if entity @s[scores={tcc.dummy2=3..}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,gamemode=!spectator] run function tcc:item/boomerang/entity_interaction/pickup/main

# Entity interactions (damage, teleportation, breaking boats/minecarts)
execute if entity @s[scores={tcc.dummy2=2..}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#tcc:boomerang/ignore,dx=0] at @s run function tcc:item/boomerang/entity_interaction/main with storage tcc:storage root.temp.boomerang.macro_input

# Continue loop
execute if entity @s[scores={tcc.dummy=1..19}] at @s run function tcc:item/boomerang/iterate