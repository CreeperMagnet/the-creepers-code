# Commands to run as the entity selected by the paintbrush

tag @p[tag=tcc.paintbrush.raycaster] add tcc.tag
execute if entity @s[type=minecraft:painting] at @s run function tcc:item/paintbrush/painting_cycle/discern
execute if entity @s[type=!minecraft:painting] run function tcc:item/paintbrush/color_entity