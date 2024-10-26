# Applies a potion effect

execute store result score #temp_0 tcc.dummy run attribute @s minecraft:max_health get 10
execute store result score #temp_1 tcc.dummy run data get entity @s Health 10
execute unless score #temp_0 tcc.dummy = #temp_1 tcc.dummy run function tcc:item/diluted_potion/apply_effect/healing_apply