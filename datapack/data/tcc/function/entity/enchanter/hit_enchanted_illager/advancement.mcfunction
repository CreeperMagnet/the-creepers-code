# Plays a noise and does effects when you hit an enchanted mob

execute as @n[type=#tcc:enchanter_affected,predicate=tcc:entity_properties/is_affected_by_enchanter,nbt={HurtTime:10s}] at @s run function tcc:entity/enchanter/hit_enchanted_illager/as_illager

advancement revoke @s only tcc:technical/player_hurt_entity/enchanted_illager