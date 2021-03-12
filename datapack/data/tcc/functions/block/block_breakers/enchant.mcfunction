############################################################
# Description: Enchants a block breaker
# Creator: CreeperMagnet_
# Heavily modified by: Ellivers
############################################################

scoreboard players reset @s tcc.dummy
scoreboard players reset @s tcc.dummy2
data remove entity @s HandItems[0].tag.Enchantments

# Silk touch
execute unless entity @s[tag=tcc.snipper] store success score @s tcc.dummy if data entity @e[type=item,predicate=tcc:block_breaker_enchanted_book,limit=1,dz=0,dx=0,dy=0,sort=nearest,tag=!global.ignore] Item.tag.StoredEnchantments[{id:"minecraft:silk_touch"}] run data modify entity @s HandItems[0].tag.Enchantments append value {id:"minecraft:silk_touch",lvl:1s}
execute unless entity @s[tag=tcc.snipper] unless score @s tcc.dummy matches 1.. run data modify entity @s HandItems[0].tag.Enchantments append from entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:silk_touch"}]

# Fortune
scoreboard players reset @s tcc.dummy
execute unless entity @s[tag=tcc.snipper] store result score @s tcc.dummy run data get entity @e[type=item,predicate=tcc:block_breaker_enchanted_book,limit=1,dz=0,dx=0,dy=0,sort=nearest,tag=!global.ignore] Item.tag.StoredEnchantments[{id:"minecraft:fortune"}].lvl
execute unless entity @s[tag=tcc.snipper] store result score @s tcc.dummy2 run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute unless entity @s[tag=tcc.snipper] run scoreboard players operation @s tcc.dummy += @s tcc.dummy2
execute if entity @s[tag=!tcc.snipper,scores={tcc.dummy=4..}] run scoreboard players set @s tcc.dummy 3
execute if entity @s[tag=!tcc.snipper,scores={tcc.dummy=1..}] run data modify entity @s HandItems[0].tag.Enchantments append value {id:"minecraft:fortune",lvl:1s}
execute if entity @s[tag=!tcc.snipper,scores={tcc.dummy=1..}] store result entity @s HandItems[0].tag.Enchantments[{id:"minecraft:fortune"}].lvl short 1 run scoreboard players get @s tcc.dummy

# Efficiency
scoreboard players reset @s tcc.dummy
scoreboard players reset @s tcc.dummy2
execute store result score @s tcc.dummy run data get entity @e[type=item,predicate=tcc:block_breaker_enchanted_book,limit=1,dz=0,dx=0,dy=0,sort=nearest,tag=!global.ignore] Item.tag.StoredEnchantments[{id:"minecraft:efficiency"}].lvl
execute store result score @s tcc.dummy2 run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute run scoreboard players operation @s tcc.dummy += @s tcc.dummy2
execute if entity @s[scores={tcc.dummy=6..}] run scoreboard players set @s tcc.dummy 5
execute if entity @s[scores={tcc.dummy=1..}] run data modify entity @s HandItems[0].tag.Enchantments append value {id:"minecraft:efficiency",lvl:1s}
execute if entity @s[scores={tcc.dummy=1..}] store result entity @s HandItems[0].tag.Enchantments[{id:"minecraft:efficiency"}].lvl short 1 run scoreboard players get @s tcc.dummy

execute store success score @s tcc.dummy run data modify entity @s ArmorItems[3].tag.Enchantments set from entity @s HandItems[0].tag.Enchantments
execute if entity @s[scores={tcc.dummy=1..}] run kill @e[type=item,predicate=tcc:block_breaker_enchanted_book,limit=1,dz=0,dx=0,dy=0,sort=nearest,tag=!global.ignore,tag=!global.ignore.kill]
execute if entity @s[scores={tcc.dummy=1..}] run playsound tcc:block.block_breaker.enchant block @a[distance=..16] ~ ~ ~ 0.6 1
execute if entity @s[scores={tcc.dummy=1..}] run tag @s add tcc.block_breaker.enchanted
