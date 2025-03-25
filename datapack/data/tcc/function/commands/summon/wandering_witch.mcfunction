# Summons an wandering witch

data modify storage tcc:temp root.pos set from entity @s Pos
execute summon minecraft:wandering_trader run function tcc:entity/wandering_witch/initiate_trader
tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.wandering_witch"}]}
