############################################################
# Description: Functions to run off non-spectator players every single tick
# Creator: CreeperMagnet_
############################################################

## Elytra Closing When Shifting
execute if entity @s[scores={tcc.useelytra=1..,tcc.sneaktime=1..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]},nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Damage:431}}]}] run function tcc:item/elytra_close/close

## Commands for holding items
execute if entity @s[predicate=tcc:holding/anything] run function tcc:entity/player/tick/holding_item

## Horses with Frost Trotting
execute if entity @s[tag=tcc.frost_trotting] run function tcc:entity/horse_frost_trotting/tick

## Jewelry Table
execute if entity @s[tag=tcc.inside_jewelry_table_gui] as @e[type=armor_stand,tag=tcc.jewelry_table,distance=..12] at @s if block ~ ~ ~ hopper run function tcc:block/jewelry_table/tick

## Score reset
execute if entity @s[gamemode=!creative] run function tcc:entity/player/score_reset
