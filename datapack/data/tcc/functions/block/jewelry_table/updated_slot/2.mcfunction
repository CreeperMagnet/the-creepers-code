############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion"}]} if data block ~ ~ ~ Items[{Slot:3b}].tag.Potion unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:thick"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:mundane"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} run data modify block ~ ~ ~ Items[{Slot:2b}].Slot set value 3b
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{potion:{}}}},{Slot:2b,id:"minecraft:milk_bucket"}]} run data modify block ~ ~ ~ Items[{Slot:2b}].Slot set value 3b
execute if data entity @s[scores={tcc.dummy=1..}] ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[2] set value {Slot:2b}

scoreboard players set @s tcc.dummy 0
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:flame"}]}}]} run scoreboard players add @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:thorns"}]}}]} run scoreboard players add @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:channeling"}]}}]} run scoreboard players add @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:unbreaking"}]}}]} run scoreboard players add @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}]} run scoreboard players add @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:vanishing_curse"}]}}]} run scoreboard players add @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:flame"}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:flame"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:thorns",lvl:3s}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:3s}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:thorns",lvl:2s}]}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:2s}]}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:1s}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:thorns"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:thorns",lvl:1s}]}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:1s}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:thorns"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:channeling"}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:channeling"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:mending"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b,tag:{StoredEnchantments:[{id:"minecraft:vanishing_curse"}]}}]} if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]} run scoreboard players remove @s tcc.dummy 1
execute if block ~ ~ ~ hopper{Items:[{Slot:2b}]} if entity @s[scores={tcc.dummy=0}] run function tcc:block/jewelry_table/export_slot/2
scoreboard players reset @s tcc.dummy

execute if block ~ ~ ~ hopper{Items:[{Slot:0b}]} run tag @s add tcc.jewelry_table.needs_to_assemble