############################################################
# Description: Commands to run when you're hit by something and you have a flame ring
# Creator: CreeperMagnet_
############################################################


execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_bee=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=bee,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_cat=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=cat,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_cave_spider=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=cave_spider,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_enderman=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=enderman,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_endermite=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=endermite,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_hoglin=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=hoglin,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_husk=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=husk,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_iron_golem=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=iron_golem,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_panda=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=panda,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_phantom=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=phantom,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_piglin=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=piglin,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_piglin_brute=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=piglin_brute,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_polar_bear=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=polar_bear,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_pufferfish=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=pufferfish,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_ravager=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=ravager,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_silverfish=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=silverfish,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_slime=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=slime,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_spider=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=spider,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_vindicator=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=vindicator,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_wolf=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=wolf,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_zombie=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=zombie,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute store result score @s tcc.dummy if entity @s[advancements={tcc:technical/item/rings/flame_damage={minecraft_zombie_villager=true}}] run data merge entity @e[tag=!global.ignore,distance=..3,type=zombie_villager,limit=1,sort=nearest,nbt={Fire:-1s}] {Fire:50s}
execute if entity @s[scores={tcc.dummy=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:flame"}],tcc:{id:"ring"}}}}] run function tcc:item/item_modification/durability/damage/mainhand
execute if entity @s[scores={tcc.dummy=1..},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:flame"}],tcc:{id:"ring"}}}}] run function tcc:item/item_modification/durability/damage/offhand
scoreboard players reset @s tcc.dummy
advancement revoke @s only tcc:technical/item/rings/flame_damage
