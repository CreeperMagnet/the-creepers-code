# Macro function that selects the proper creaking connector to power

$execute as @e[type=minecraft:item_display,tag=tcc.creaking_connector] if items entity @s contents *[minecraft:custom_data~{id:$(id)}] at @s positioned ~ ~-1 ~ run function tcc:block/creaking_connector/power/activate_macro with storage tcc:temp root.macro_input