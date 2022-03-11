############################################################
# Commands to damage an entity for 1 heart
############################################################

# Visual damage effect
effect give @s[type=#tcc:undead] instant_health 1 31
effect give @s[type=!#tcc:undead] instant_damage 1 31
data merge entity @s {HurtTime:10s}

# Edit health
execute store result score @s tcc.dummy run data get entity @s Health 10
scoreboard players remove @s tcc.dummy 40
execute store result entity @s[scores={tcc.dummy=1..}] Health float 0.1 run scoreboard players get @s tcc.dummy

# Kill the entity, if it's a raider with a banner, give the player bad omen.
kill @s[scores={tcc.dummy=..0}]
execute if entity @s[scores={tcc.dummy=..0},type=#minecraft:raiders,nbt={ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b}]}] unless data entity @s RaidId as @a[gamemode=!spectator,nbt=!{Health:0.0f}] run function tcc:item/boomerang/entity_interaction/entity_damage/bad_omen/select_player

# Additional effects if the mob can trigger aggression anywhere
execute if entity @s[type=#tcc:boomerang/aggression] run function tcc:item/boomerang/entity_interaction/entity_damage/set_aggression/main

# Reset
scoreboard players reset @s tcc.dummy
