############################################################
# Colors a block
############################################################
execute if block ~ ~ ~ #tcc:paintbrush/blue run tag @s add tcc.tag

execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ blue_concrete
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ blue_wool
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ blue_carpet
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ blue_stained_glass
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ blue_stained_glass_pane
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes run data modify storage tcc:storage root.paintbrush set from block ~ ~ ~ {}
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=up] run setblock ~ ~ ~ blue_shulker_box[facing=up]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=down] run setblock ~ ~ ~ blue_shulker_box[facing=down]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=north] run setblock ~ ~ ~ blue_shulker_box[facing=north]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=south] run setblock ~ ~ ~ blue_shulker_box[facing=south]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=east] run setblock ~ ~ ~ blue_shulker_box[facing=east]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=west] run setblock ~ ~ ~ blue_shulker_box[facing=west]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes run data modify block ~ ~ ~ Items set from storage tcc:storage root.paintbrush.Items
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes run data modify block ~ ~ ~ CustomName set from storage tcc:storage root.paintbrush.CustomName
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ blue_glazed_terracotta
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ blue_concrete_powder
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ blue_terracotta
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=1] run setblock ~ ~ ~ minecraft:blue_candle[candles=1]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=2] run setblock ~ ~ ~ minecraft:blue_candle[candles=2]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=3] run setblock ~ ~ ~ minecraft:blue_candle[candles=3]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=4] run setblock ~ ~ ~ minecraft:blue_candle[candles=4]
execute if entity @s[tag=!tcc.tag] run function tcc:item/paintbrush/color_brush
tag @s remove tcc.tag
