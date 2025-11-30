# Does the healing for the instant health diluted potion

execute if entity @s[gamemode=!creative] run function tcc:entity/player/heal/main {amount:"10"}
scoreboard players set @s tcc.dummy 1