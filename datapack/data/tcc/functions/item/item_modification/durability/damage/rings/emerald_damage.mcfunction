############################################################
# Description: Commands to run when you kill a mob with an emerald ring
# Creator: CreeperMagnet_
############################################################

tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{gemstone:{quality:"cut"}}}}]},predicate=tcc:chance/one_fourth] add tcc.tag
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{gemstone:{quality:"pristine"}}}}]},predicate=tcc:chance/one_half] add tcc.tag

execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_axolotl=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/axolotl
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_bat=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/bat
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_bee=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/bee
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_blaze=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/blaze
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_cat=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/cat
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_cave_spider=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/cave_spider
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_chicken=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/chicken
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_cod=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/cod
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_cow=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/cow
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_creeper=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/creeper
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_dolphin=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/dolphin
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_donkey=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/donkey
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_drowned=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/drowned
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_elder_guardian=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/elder_guardian
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_enderman=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/enderman
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_endermite=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/endermite
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_fox=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/fox
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_ghast=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/ghast
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_glow_squid=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/glow_squid
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_goat=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/goat
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_guardian=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/guardian
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_hoglin=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/hoglin
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_horse=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/horse
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_husk=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/husk
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_illusioner=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/illusioner
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_iron_golem=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/iron_golem
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_llama=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/llama
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_magma_cube=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/magma_cube
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_mooshroom=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/mooshroom
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_mule=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/mule
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_ocelot=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/ocelot
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_panda=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/panda
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_parrot=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/parrot
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_phantom=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/phantom
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_pig=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/pig
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_piglin=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/piglin
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_piglin_brute=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/piglin_brute
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_pillager=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/pillager
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_polar_bear=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/polar_bear
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_pufferfish=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/pufferfish
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_rabbit=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/rabbit
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_ravager=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/ravager
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_salmon=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/salmon
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_sheep=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/sheep
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_shulker=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/shulker
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_silverfish=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/silverfish
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_skeleton_horse=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/skeleton_horse
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_skeleton=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/skeleton
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_slime=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/slime
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_snow_golem=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/snow_golem
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_spider=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/spider
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_squid=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/squid
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_stray=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/stray
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_strider=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/strider
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_trader_llama=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/trader_llama
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_tropical_fish=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/tropical_fish
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_turtle=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/turtle
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_vex=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/vex
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_vindicator=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/vindicator
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_witch=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/witch
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_wither_skeleton=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/wither_skeleton
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_wolf=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/wolf
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_zoglin=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/zoglin
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_zombie=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/zombie
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_zombie_horse=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/zombie_horse
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_zombified_piglin=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/zombified_piglin
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={minecraft_zombie_villager=true}}] run loot spawn ~ ~ ~ loot minecraft:entities/zombie_villager
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={tcc_enchanter=true}}] run loot spawn ~ ~ ~ loot tcc:entities/enchanter
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={tcc_geomancer=true}}] run loot spawn ~ ~ ~ loot tcc:entities/geomancer
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={tcc_iceologer=true}}] run loot spawn ~ ~ ~ loot tcc:entities/iceologer
execute if entity @s[tag=tcc.tag,advancements={tcc:technical/item/rings/emerald_damage={tcc_iceologer_raid=true}}] run loot spawn ~ ~ ~ loot tcc:entities/iceologer_raid

execute if entity @s[tag=tcc.tag] run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1000 0

execute if entity @s[gamemode=!creative,gamemode=!spectator] run function tcc:item/item_modification/durability/damage/offhand

advancement revoke @s only tcc:technical/item/rings/emerald_damage

tag @s remove tcc.tag
