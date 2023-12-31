############################################################
# Freezes the player
############################################################

particle minecraft:snowflake ~ ~1.2 ~ 0.2 0.5 0.2 0 100 force
damage @s 1.0 tcc:iceologer_ice by @e[tag=tcc.iceologer_damage_source,type=wandering_trader,limit=1]
effect give @s slowness 15 1 false