############################################################
# Commands to run when you eat food with an emerald ring
############################################################

effect give @s[predicate=!tcc:entity/holding/ring/netherite] minecraft:saturation 1 0 true
effect give @s[predicate=tcc:entity/holding/ring/netherite] minecraft:saturation 1 1 true 

playsound minecraft:entity.player.burp player @s ~ ~ ~ 1000 2

execute if entity @s[gamemode=!creative,gamemode=!spectator] run function tcc:item/durability/damage_generic_amount/offhand_1

advancement revoke @s only tcc:technical/consume_item/with_emerald_ring