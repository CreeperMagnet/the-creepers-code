# Commands to break a decorated pot into shards

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.block set from block ~ ~ ~ {}
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=true,cracked=true]
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=false] run setblock ~ ~ ~ minecraft:decorated_pot[waterlogged=false,cracked=true]
data modify block ~ ~ ~ {} merge from storage tcc:storage root.temp.block
loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe

data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.item set from block ~ ~ ~ item

execute store result storage tcc:storage root.temp.macro_input.x double 0.01 run random value -5..5
execute store result storage tcc:storage root.temp.macro_input.y double 0.01 run random value 25..27
execute store result storage tcc:storage root.temp.macro_input.z double 0.01 run random value -5..5

function tcc:technical/macros/spawn_item_motion with storage tcc:storage root.temp.macro_input

execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=true] run setblock ~ ~ ~ minecraft:water
execute if block ~ ~ ~ minecraft:decorated_pot[waterlogged=false] run setblock ~ ~ ~ minecraft:air
particle minecraft:block minecraft:decorated_pot ~ ~ ~ 0.3 0.3 0.3 0.5 50
playsound minecraft:block.decorated_pot.shatter block @a[distance=..16]