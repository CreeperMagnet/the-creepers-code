############################################################
# Description: Functions to run off players every single tick
# Creator: CreeperMagnet_
############################################################

## Elytra Closing When Shifting
execute if entity @s[scores={tcc.useelytra=1..,tcc.sneaktime=1..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]},nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Damage:431}}]}] run function tcc:item/elytra_close/close

## Commands for holding items
execute if entity @s[predicate=tcc:holding/anything] run function tcc:entity/player/tick/holding_item

## Anvil Smashing
execute as @e[type=falling_block,sort=nearest,predicate=tcc:anvil,tag=!global.ignore,distance=..20] at @s if block ~ ~-0.9 ~ #tcc:anvil_smash run function tcc:block/anvil_smashing/check_motion

## Horses with Frost Trotting
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]},predicate=!tcc:moving,nbt={RootVehicle:{Entity:{OnGround:1b,SaddleItem:{id:"minecraft:saddle"}}}}] positioned ~ ~-1.85 ~ if block ~ ~1.85 ~ air positioned ~-3 ~-0.1 ~-3 unless entity @e[dx=6,dz=6,dy=0,type=!#tcc:frost_trotting_ignore,tag=!global.ignore] positioned ~3 ~0.1 ~3 run fill ~-3 ~ ~-3 ~3 ~ ~3 frosted_ice replace water[level=0]

## Jewelry Table
execute if entity @s[tag=tcc.inside_jewelry_table_gui] as @e[type=armor_stand,tag=tcc.jewelry_table,distance=..12,sort=arbitrary] at @s if block ~ ~ ~ hopper run function tcc:block/jewelry_table/tick

## Score reset
execute if entity @s[gamemode=!creative] run function tcc:entity/player/score_reset

# Emoji
execute if entity @s[tag=!tcc.emoji_mute] unless entity @s[scores={tcc.emoji=0}] run function tcc:entity/player/emoji

# Compendium trigger
execute if entity @s[scores={tcc.compendium=1..}] run function tcc:item/compendium
