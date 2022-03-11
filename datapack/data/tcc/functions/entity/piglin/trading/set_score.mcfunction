############################################################
# Runs code for bartering
############################################################

scoreboard players set #temp_0 tcc.dummy 0
execute if predicate tcc:entity/wearing/gold_equipment/golden_helmet run scoreboard players add #temp_0 tcc.dummy 1
execute if predicate tcc:entity/wearing/gold_equipment/golden_chestplate run scoreboard players add #temp_0 tcc.dummy 1
execute if predicate tcc:entity/wearing/gold_equipment/golden_leggings run scoreboard players add #temp_0 tcc.dummy 1
execute if predicate tcc:entity/wearing/gold_equipment/golden_boots run scoreboard players add #temp_0 tcc.dummy 1
execute if predicate tcc:entity/wearing/gold_equipment/golden_ring run scoreboard players add #temp_0 tcc.dummy 1
execute if entity @s[advancements={tcc:technical/multiple_trigger_types/trade_with_piglin={interact=true}}] as @e[type=piglin,tag=!smithed.strict,limit=1,sort=nearest,distance=..20,nbt={Brain:{memories:{"minecraft:admiring_item":{ttl:120L,value:1b}}},HandItems:[{},{id:"minecraft:gold_ingot"}]}] run function tcc:entity/piglin/trading/as_entity
execute if entity @s[advancements={tcc:technical/multiple_trigger_types/trade_with_piglin={throw=true}}] as @e[type=piglin,tag=!smithed.strict,limit=1,sort=nearest,distance=..20,nbt={Brain:{memories:{"minecraft:admiring_item":{value:1b}}}}] unless data entity @s HandItems[1].id run function tcc:entity/piglin/trading/as_entity
advancement revoke @s only tcc:technical/multiple_trigger_types/trade_with_piglin
