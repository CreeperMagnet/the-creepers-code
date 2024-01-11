# Functions to run off of a wandering trader hit by lightning

data merge entity @s {DeathLootTable:"minecraft:empty",DeathTime:200s,Silent:1b}
tp @s ~ -1000 ~
execute summon minecraft:wandering_trader run function tcc:entity/wandering_witch/initiate_trader
