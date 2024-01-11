# Commands for when a hat is picked up by an entity or equipped on an armor stand

advancement revoke @s only tcc:technical/multiple_trigger_types/hat_entity_equip
execute as @e[distance=..30,type=#tcc:wears_helmets,tag=!smithed.strict,predicate=tcc:entity/wearing/hat_helmet] run data modify entity @s ArmorItems[3].id set value "minecraft:warped_fungus_on_a_stick"
