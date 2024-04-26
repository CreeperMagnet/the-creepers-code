# Commands for the boomerang hitting a block and breaking

data modify storage tcc:temp root.item set from entity @s item.components."minecraft:custom_data".tcc.item
execute unless data entity @s item.components."minecraft:custom_data".tcc{gamemode:1} run function tcc:technical/macros/loot/spawn with storage tcc:temp root.item
$scoreboard players reset @p[nbt={UUID:$(UUID)}] tcc.boomerang_cooldown
playsound tcc:item.boomerang.break player @a[distance=..64] ~ ~ ~ 4 1
execute if entity @s[tag=tcc.boomerang.on_fire] on passengers run kill @s
kill @s
