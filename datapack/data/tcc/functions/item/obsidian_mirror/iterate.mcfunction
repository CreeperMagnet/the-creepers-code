############################################################
# Description: Iterates through an array of potion effects to apply the proper opposites
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.effect set from storage tcc:storage root.temp.effects[0]

execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.effect.Amplifier 1
scoreboard players add @s tcc.dummy 1
scoreboard players operation @s tcc.dummy2 += @s tcc.dummy

scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.effect.Duration
execute if data storage tcc:storage root.temp.effect{Amplifier:0b} run function tcc:item/obsidian_mirror/add_effect/normal
execute unless data storage tcc:storage root.temp.effect{Amplifier:0b} run function tcc:item/obsidian_mirror/add_effect/amplified

data remove storage tcc:storage root.temp.effects[0]
execute if data storage tcc:storage root.temp.effects[0] run function tcc:item/obsidian_mirror/iterate
