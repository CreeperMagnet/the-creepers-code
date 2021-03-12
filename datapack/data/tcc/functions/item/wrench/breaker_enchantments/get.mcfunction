############################################################
# Description: Get and display what enchantments the block breaker has
# Creator: Ellivers
############################################################

scoreboard players reset tcc.temp_0
scoreboard players reset tcc.temp_1
scoreboard players reset tcc.temp_2

execute store success score tcc.temp_0 tcc.dummy if data entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:silk_touch"}]
execute store result score tcc.temp_1 tcc.dummy run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute store result score tcc.temp_2 tcc.dummy run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:efficiency"}].lvl

execute if score tcc.temp_0 tcc.dummy matches 1 run tellraw @a[tag=tcc.tag,limit=1] {"translate": "enchantment.minecraft.silk_touch","color": "aqua"}
execute if score tcc.temp_1 tcc.dummy matches 1 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.fortune","color": "aqua"}," ",{"translate": "enchantment.level.1"}]
execute if score tcc.temp_1 tcc.dummy matches 2 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.fortune","color": "aqua"}," ",{"translate": "enchantment.level.2"}]
execute if score tcc.temp_1 tcc.dummy matches 3 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.fortune","color": "aqua"}," ",{"translate": "enchantment.level.3"}]
execute if score tcc.temp_2 tcc.dummy matches 1 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.efficiency","color": "aqua"}," ",{"translate": "enchantment.level.1"}]
execute if score tcc.temp_2 tcc.dummy matches 2 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.efficiency","color": "aqua"}," ",{"translate": "enchantment.level.2"}]
execute if score tcc.temp_2 tcc.dummy matches 3 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.efficiency","color": "aqua"}," ",{"translate": "enchantment.level.3"}]
execute if score tcc.temp_2 tcc.dummy matches 4 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.efficiency","color": "aqua"}," ",{"translate": "enchantment.level.4"}]
execute if score tcc.temp_2 tcc.dummy matches 5 run tellraw @a[tag=tcc.tag,limit=1] [{"translate": "enchantment.minecraft.efficiency","color": "aqua"}," ",{"translate": "enchantment.level.5"}]
