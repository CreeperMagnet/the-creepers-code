# Does the healing for the instant health diluted potion

scoreboard players set #health tcc.dummy 10
execute if entity @s[gamemode=!creative] run function tcc:entity/player/heal/main
scoreboard players set @s tcc.dummy 1