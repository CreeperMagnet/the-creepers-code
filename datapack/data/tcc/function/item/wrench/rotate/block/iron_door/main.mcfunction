# Rotates a block

execute if block ~ ~ ~ minecraft:iron_door[half=upper] positioned ~ ~-1 ~ run function tcc:item/wrench/rotate/block/iron_door/open
execute if block ~ ~ ~ minecraft:iron_door[half=lower] run function tcc:item/wrench/rotate/block/iron_door/open
