############################################################
# Description: Commands for when a slot is updated
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"gemstone"}}}]} unless block ~ ~ ~ hopper{Items:[{Slot:1b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 1b
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion"}]} if data block ~ ~ ~ Items[{Slot:0b}].tag.Potion unless block ~ ~ ~ hopper{Items:[{Slot:2b}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_harming"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:strong_healing"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:water"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:thick"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:mundane"}}]} unless block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:milk_bucket"}]} unless block ~ ~ ~ hopper{Items:[{Slot:2b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute store success score @s tcc.dummy if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"amethyst_dust"}}}]} unless block ~ ~ ~ hopper{Items:[{Slot:3b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 3b
execute if data entity @s[scores={tcc.dummy=1..}] ArmorItems[3].tag.tcc.stored_slots[{Slot:0b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[0] set value {Slot:0b}
scoreboard players reset @s tcc.dummy

execute if block ~ ~ ~ hopper{Items:[{Slot:0b}]} unless block ~ ~ ~ hopper{Items:[{tag:{tcc:{id:"ring"}},Slot:0b}]} run function tcc:block/jewelry_table/export_slot/0
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",gemstone:{}}}},{Slot:1b}]} run function tcc:block/jewelry_table/export_slot/1_check_gemstone
execute if block ~ ~ ~ hopper{Items:[{Slot:0b,tag:{tcc:{id:"ring",potion:{}}}},{Slot:2b,id:"minecraft:lingering_potion"}]} run function tcc:block/jewelry_table/export_slot/2
execute if block ~ ~ ~ hopper{Items:[{Slot:0b},{Slot:3b}]} run tag @s add tcc.jewelry_table.needs_to_assemble
execute if block ~ ~ ~ hopper{Items:[{Slot:0b},{Slot:1b},{Slot:3b,Count:64b}]} run playsound tcc:block.jewelry_table.pristine block @a[distance=..16,tag=tcc.inside_jewelry_table_gui]

execute unless block ~ ~ ~ hopper{Items:[{Slot:0b}]} run function tcc:block/jewelry_table/export_slot/clear_output
