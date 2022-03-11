############################################################
# Gives you a compendium
############################################################

clear @s[gamemode=!spectator] written_book{tcc:{id:"compendium"}}
loot give @s[gamemode=!spectator,tag=!tcc.compendium_ban] loot tcc:items/compendium
tellraw @s[gamemode=spectator] {"translate":"commands.tcc.trigger.spectator","color":"red"}
scoreboard players set @s tcc.compendium 0
scoreboard players enable @s tcc.compendium
