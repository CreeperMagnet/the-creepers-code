execute store result score @s tcc.dummy run data get entity @s ArmorItems[0].tag.tcc.UUID[0]
execute as @a store result score @s tcc.dummy run data get entity @s UUID[0]
scoreboard players operation @a tcc.dummy -= @s tcc.dummy
execute as @a[scores={tcc.dummy=0}] run function tcc:item/boomerang/hurt/bad_omen/add_omen
