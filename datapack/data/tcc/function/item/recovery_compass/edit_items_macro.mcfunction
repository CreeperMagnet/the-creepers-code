# Macro that selects all item entities with a specific Thrower UUID & death id

$execute as @e[type=minecraft:item,distance=..30,tag=tcc.death_item,nbt={Thrower:$(UUID)},tag=!tcc.second_clock.,scores={tcc.deaths=$(score)}] run function tcc:item/recovery_compass/glow
