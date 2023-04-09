############################################################
# Commands to run off a target being damaged
############################################################

damage @s 4.0 tcc:iceologer_ice by @e[tag=tcc.iceologer_ice_damage_source,type=falling_block,limit=1] from @e[tag=tcc.iceologer,scores={tcc.dummy=0},limit=1]
effect give @s slowness 5 0 false
