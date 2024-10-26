# Makes animations and such for a spell-casting cycle

scoreboard players set @s tcc.dummy2 0
tag @s add tcc.spellcasting
data modify entity @s ArmorItems[2].components."minecraft:item_model" set value "tcc:entity/enchanter/body/spellcasting/main"
attribute @s minecraft:movement_speed modifier add tcc:slowness -100 add_value
