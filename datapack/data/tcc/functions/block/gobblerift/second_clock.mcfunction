# Second commands for gobblerift

execute if entity @s[tag=tcc.gobblerift.juice_ready] run particle minecraft:dragon_breath ~ ~1.3 ~ 0.1 0 0.1 0.01 4

execute if entity @s[tag=tcc.gobblerift.digesting,predicate=tcc:random_chance/0.1,tag=!tcc.silent] run playsound tcc:block.gobblerift.digest block @a[distance=..16]
execute if entity @s[tag=tcc.gobblerift.hungry,predicate=tcc:random_chance/0.1,tag=!tcc.silent] run playsound tcc:block.gobblerift.hungry block @a[distance=..16]