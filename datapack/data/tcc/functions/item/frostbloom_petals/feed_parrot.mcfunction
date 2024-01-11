# Commands for being a cruel person

execute as @e[tag=!smithed.entity,limit=1,type=minecraft:item,distance=..10,nbt={Item:{id:"minecraft:feather"},PickupDelay:10s}] at @s run loot spawn ~ ~ ~ loot tcc:entities/parrot_frostbloom_petals
advancement revoke @s only tcc:technical/player_interacted_with_entity/feed_parrot_frostbloom_petals
