############################################################
# Sets the status of a painting
############################################################

scoreboard players set @s tcc.dummy 0

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sunset",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:courbet",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sunset",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:courbet",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sunset",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:courbet",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sunset",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:courbet",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sea",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:sunset",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sea",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:sunset",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sea",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:sunset",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:sea",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:sunset",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pool",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:sea",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pool",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:sea",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pool",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:sea",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pool",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:sea",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:creebet",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:pool",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:creebet",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:pool",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:creebet",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:pool",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:creebet",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:pool",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:courbet",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:creebet",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:courbet",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:creebet",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:courbet",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:creebet",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:courbet",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:creebet",Facing:3b}

kill @s
