############################################################
# Description: Sets the status of a painting
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:graham",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wanderer",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:graham",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wanderer",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:graham",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wanderer",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:graham",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wanderer",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wanderer",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:graham",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wanderer",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:graham",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wanderer",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:graham",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wanderer",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:graham",Facing:3b}

kill @s
