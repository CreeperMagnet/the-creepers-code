# Sets the tags for a snail you just bred

tag @s add tcc.in_love
particle minecraft:heart ~ ~ ~ 0.5 0.5 0.5 1 15 normal
execute if entity @s[tag=!tcc.silent] run playsound tcc:entity.snail.feed neutral @a[distance=..16]
