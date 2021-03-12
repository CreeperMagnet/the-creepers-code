############################################################
# Description: Improves function of the totem of undying
# Creator: CreeperMagnet_
############################################################
execute as @a[tag=tcc.scheduled.totem_of_undying] at @s positioned ~ -64 ~ if entity @s[dy=-100] run effect give @s levitation 4 50
execute as @a[tag=tcc.scheduled.totem_of_undying] at @s positioned ~ -64 ~ if entity @s[dy=-100] run effect give @s slow_falling 60 0
execute as @a[tag=tcc.scheduled.totem_of_undying] at @s if block ~ ~1 ~ water run effect give @s water_breathing 180 0 false
tag @a[tag=tcc.scheduled.totem_of_undying] remove tcc.scheduled.totem_of_undying
