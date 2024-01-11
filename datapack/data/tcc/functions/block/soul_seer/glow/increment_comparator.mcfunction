# Increments the item.tag.comparator data on a soul seer entity

execute store result entity @s item.tag.comparator int -1 run data get entity @s item.tag.comparator -1.0000000001
execute if data entity @s item.tag{comparator:0} run data modify entity @s item.tag.comparator set value 1
