# Ten second clock for glow lichen zombie

execute unless predicate tcc:time_check/night positioned over motion_blocking if entity @s[dx=0,dy=1000,dz=0] run data modify entity @s Fire set value 200s
data modify entity @s InWaterTime set value -32767