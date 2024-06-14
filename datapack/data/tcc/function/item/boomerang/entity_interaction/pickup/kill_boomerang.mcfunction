# Kills the boomerang once it's been picked up

execute if entity @s[tag=tcc.boomerang.on_fire] on passengers run kill @s
kill @s
scoreboard players set @s tcc.dummy -1
