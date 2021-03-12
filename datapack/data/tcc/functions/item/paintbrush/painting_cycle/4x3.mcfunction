############################################################
# Description: Sets the status of a painting
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:donkey_kong",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:skeleton",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:donkey_kong",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:skeleton",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:donkey_kong",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:skeleton",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:donkey_kong",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:skeleton",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skeleton",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:donkey_kong",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skeleton",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:donkey_kong",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skeleton",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:donkey_kong",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skeleton",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:donkey_kong",Facing:3b}

kill @s
