############################################################
# Description: Sets the status of a painting
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wasteland",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:alban",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wasteland",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:alban",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wasteland",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:alban",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:wasteland",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:alban",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:plant",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wasteland",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:plant",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wasteland",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:plant",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wasteland",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:plant",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:wasteland",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:kebab",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:plant",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:kebab",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:plant",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:kebab",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:plant",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:kebab",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:plant",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bomb",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:kebab",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bomb",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:kebab",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bomb",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:kebab",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:bomb",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:kebab",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec2",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:bomb",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec2",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:bomb",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec2",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:bomb",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec2",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:bomb",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec2",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec2",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec2",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:aztec",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec2",Facing:3b}

execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:alban",Facing:0b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec",Facing:0b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:alban",Facing:1b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec",Facing:1b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:alban",Facing:2b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec",Facing:2b}
execute store success score @s tcc.dummy if entity @s[scores={tcc.dummy=0},nbt={Motive:"minecraft:alban",Facing:3b}] run summon minecraft:painting ~ ~ ~ {Motive:"minecraft:aztec",Facing:3b}

kill @s
