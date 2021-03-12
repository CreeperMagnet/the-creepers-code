############################################################
# Description: Triggers aggression in neutral entities
# Creator: ChromaKey
############################################################

execute if entity @s[type=#tcc:tameable] run function tcc:item/boomerang/hurt/determine_pet
execute if entity @s[type=minecraft:wolf] as @e[type=minecraft:wolf,tag=!tcc.owned_pet,distance=..56,tag=!global.ignore] run function tcc:item/boomerang/hurt/aggro
execute if entity @s[type=minecraft:zombified_piglin] as @e[type=minecraft:zombified_piglin,distance=..17,tag=!global.ignore] run function tcc:item/boomerang/hurt/aggro
execute if entity @s[type=minecraft:iron_golem,nbt=!{PlayerCreated:1b}] run function tcc:item/boomerang/hurt/aggro
execute if entity @s[type=minecraft:bee] as @e[type=minecraft:bee,distance=..17,tag=!global.ignore] run function tcc:item/boomerang/hurt/aggro
execute if entity @s[type=minecraft:piglin] as @e[type=minecraft:piglin,distance=..16,tag=!global.ignore] run function tcc:item/boomerang/hurt/brain_aggro
execute if entity @s[type=minecraft:polar_bear,predicate=!tcc:baby] run function tcc:item/boomerang/hurt/aggro
execute if entity @s[type=minecraft:polar_bear,predicate=tcc:baby] as @e[type=minecraft:polar_bear,predicate=!tcc:baby,distance=..41,tag=!global.ignore] run function tcc:item/boomerang/hurt/aggro
execute if entity @s[type=minecraft:enderman] run function tcc:item/boomerang/hurt/aggro
