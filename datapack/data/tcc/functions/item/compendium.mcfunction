############################################################
# Description: Gives you a compendium
# Creator: CreeperMagnet_
############################################################

loot give @s[gamemode=!spectator] loot tcc:items/compendium
tellraw @s[gamemode=spectator] {"translate":"commands.tcc.compendium_trigger.spectator","color":"red"}
scoreboard players set @s tcc.compendium 0
scoreboard players enable @s tcc.compendium
