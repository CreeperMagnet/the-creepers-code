# Checks if the zombie is cured yet

execute unless predicate tcc:time_check/night positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s
execute store result score @s tcc.dummy run data get entity @s ConversionTime
execute if score @s tcc.dummy matches 0..300 run function tcc:entity/archaeologist/zombie/summon_cured
