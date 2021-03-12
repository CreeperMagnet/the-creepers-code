############################################################
# Description: Sets the status of a painting
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wither",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:bust",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wither",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:bust",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wither",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:bust",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wither",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:bust",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:void",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:wither",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:void",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:wither",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:void",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wither",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:void",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wither",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:stage",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:void",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:stage",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:void",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:stage",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:void",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:stage",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:void",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skull_and_roses",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:stage",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skull_and_roses",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:stage",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skull_and_roses",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:stage",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:skull_and_roses",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:stage",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:match",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:skull_and_roses",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:match",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:skull_and_roses",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:match",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:skull_and_roses",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:match",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:skull_and_roses",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bust",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:match",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bust",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:match",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bust",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:match",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bust",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:match",Facing:3b}

kill @s
