############################################################
# Commands to run when you kill a mob with a lapis ring
############################################################

xp add @s[predicate=!tcc:entity/holding/ring/netherite] 2 points
xp add @s[predicate=tcc:entity/holding/ring/netherite] 4 points
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2
execute if entity @s[gamemode=!spectator,gamemode=!creative] run function tcc:item/durability/damage_generic_amount/offhand_1
advancement revoke @s only tcc:technical/player_killed_entity/with_lapis_lazuli_ring
