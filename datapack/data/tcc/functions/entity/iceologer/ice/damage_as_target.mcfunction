# Commands to run off a target being damaged

$damage @s 4.0 tcc:iceologer_ice by @e[tag=tcc.iceologer_ice_damage_source,type=minecraft:falling_block,limit=1] from @e[type=minecraft:wandering_trader,tag=tcc.iceologer,limit=1,nbt={UUID:$(UUID)}]
effect give @s minecraft:slowness 5 0 false
