# Commands for interactions with entities

execute if entity @s[type=minecraft:enderman,tag=!smithed.strict] run function tcc:item/boomerang/entity_interaction/enderman_artificial_teleport
$execute if entity @s[type=!minecraft:enderman,nbt=!{Invulnerable:1b}] run damage @s 4.0 tcc:boomerang by @p[nbt={UUID:$(UUID)}]
$execute unless score #0 tcc.dummy matches $(fire) run data modify entity @s Fire set value 90s