############################################################
# Description: Sets the status of a painting
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:burning_skull",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:pigscene",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:burning_skull",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:pigscene",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:burning_skull",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:pigscene",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:burning_skull",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:pigscene",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pigscene",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:pointer",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pigscene",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:pointer",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pigscene",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:pointer",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pigscene",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:pointer",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pointer",Facing:0b}] run summon minecraft:painting ~-1 ~ ~ {Motive:"minecraft:burning_skull",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pointer",Facing:1b}] run summon minecraft:painting ~ ~ ~-1 {Motive:"minecraft:burning_skull",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pointer",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:burning_skull",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:pointer",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:burning_skull",Facing:3b}

kill @s
