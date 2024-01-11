# Commands to execute as the clicked pot entity

execute positioned ~-0.5 ~ ~-0.5 as @a[dx=0] run function tcc:block/decorated_pot/interact/teleport
data modify entity @s item.tag.pot_data set value {"waterlogged":"false","facing":"north","cracked":"false"}
data modify entity @s item.tag.pot_data.nbt set from block ~ ~ ~ {}
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run data modify entity @s item.tag.pot_data.waterlogged set value "true"
execute if block ~ ~ ~ minecraft:decorated_pot[cracked=true] run data modify entity @s item.tag.pot_data.cracked set value "true"
execute if block ~ ~ ~ minecraft:decorated_pot[facing=east] run data modify entity @s item.tag.pot_data.facing set value "east"
execute if block ~ ~ ~ minecraft:decorated_pot[facing=south] run data modify entity @s item.tag.pot_data.facing set value "south"
execute if block ~ ~ ~ minecraft:decorated_pot[facing=west] run data modify entity @s item.tag.pot_data.facing set value "west"

execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=false] run setblock ~ ~ ~ minecraft:barrier
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run setblock ~ ~ ~ minecraft:barrier[waterlogged=true]
scoreboard players set @s tcc.dummy2 2