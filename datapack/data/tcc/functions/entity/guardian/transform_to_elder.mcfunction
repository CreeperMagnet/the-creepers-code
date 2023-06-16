############################################################
# Functions to run off of a guardian hit by lightning
############################################################

data merge entity @s {DeathLootTable:"minecraft:empty",DeathTime:200s,Silent:1b}
tp @s ~ -1000 ~
summon elder_guardian ~ ~ ~ {Tags:["tcc.unnatural_elder_guardian"]}