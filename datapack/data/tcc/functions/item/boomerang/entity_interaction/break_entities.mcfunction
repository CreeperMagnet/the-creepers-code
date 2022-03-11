############################################################
# Breaks minecarts and boats
############################################################

execute if entity @s[type=boat] run playsound block.wood.break neutral @a[distance=..16]
execute if entity @s[type=boat,nbt={Type:"oak"}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:oak_boat",Count:1b}}
execute if entity @s[type=boat,nbt={Type:"dark_oak"}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:dark_oak_boat",Count:1b}}
execute if entity @s[type=boat,nbt={Type:"acacia"}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:acacia_boat",Count:1b}}
execute if entity @s[type=boat,nbt={Type:"jungle"}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:jungle_boat",Count:1b}}
execute if entity @s[type=boat,nbt={Type:"birch"}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:birch_boat",Count:1b}}
execute if entity @s[type=boat,nbt={Type:"spruce"}] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:spruce_boat",Count:1b}}

execute if entity @s[type=#tcc:minecarts] run playsound block.metal.break neutral @a[distance=..16]
execute if entity @s[type=#tcc:minecarts] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:minecart",Count:1b}}
execute if entity @s[type=chest_minecart] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:chest",Count:1b}}
execute if entity @s[type=furnace_minecart] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:furnace",Count:1b}}
execute if entity @s[type=hopper_minecart] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:hopper",Count:1b}}
execute if entity @s[type=tnt_minecart] run summon item ~ ~ ~ {Motion:[0.0d,0.2d,0.2d],Item:{id:"minecraft:tnt",Count:1b}}

kill @s
