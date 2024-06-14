# Freezes the player

particle minecraft:snowflake ~ ~1.2 ~ 0.2 0.5 0.2 0 100 force
damage @s 1.0 tcc:iceologer_ice by @n[tag=tcc.iceologer_damage_source,type=minecraft:wandering_trader]
effect give @s minecraft:slowness 15 1 false