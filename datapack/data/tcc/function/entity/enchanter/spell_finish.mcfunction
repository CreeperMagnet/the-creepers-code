# Enchants a random mob nearby

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.spellcasting
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value false
data remove entity @s Offers.Recipes
attribute @s minecraft:movement_speed modifier remove tcc:slowness
playsound tcc:entity.enchanter.spell hostile @a[distance=..16]
execute as @e[sort=random,distance=..10,predicate=tcc:entity_properties/targeted_by_enchanters,tag=!tcc.enchanter,limit=1,nbt=!{active_effects:[{ambient:1b}]}] at @s run function tcc:entity/enchanter/enchanted
