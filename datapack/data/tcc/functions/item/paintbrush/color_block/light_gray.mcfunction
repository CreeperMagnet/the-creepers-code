############################################################
# Colors a block
############################################################
execute if block ~ ~ ~ #tcc:paintbrush/light_gray run tag @s add tcc.tag

execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ light_gray_concrete
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ light_gray_wool
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ light_gray_carpet
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ light_gray_stained_glass
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ light_gray_stained_glass_pane
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes run data modify storage tcc:storage root.paintbrush set from block ~ ~ ~ {}
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=up] run setblock ~ ~ ~ light_gray_shulker_box[facing=up]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=down] run setblock ~ ~ ~ light_gray_shulker_box[facing=down]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=north] run setblock ~ ~ ~ light_gray_shulker_box[facing=north]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=south] run setblock ~ ~ ~ light_gray_shulker_box[facing=south]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=east] run setblock ~ ~ ~ light_gray_shulker_box[facing=east]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes[facing=west] run setblock ~ ~ ~ light_gray_shulker_box[facing=west]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes run data modify block ~ ~ ~ Items set from storage tcc:storage root.paintbrush.Items
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:shulker_boxes run data modify block ~ ~ ~ CustomName set from storage tcc:storage root.paintbrush.CustomName
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ light_gray_glazed_terracotta
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ light_gray_concrete_powder
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ light_gray_terracotta
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=1] run setblock ~ ~ ~ minecraft:light_gray_candle[candles=1]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=2] run setblock ~ ~ ~ minecraft:light_gray_candle[candles=2]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=3] run setblock ~ ~ ~ minecraft:light_gray_candle[candles=3]
execute if entity @s[tag=!tcc.tag] if block ~ ~ ~ #minecraft:candles[candles=4] run setblock ~ ~ ~ minecraft:light_gray_candle[candles=4]
execute if entity @s[tag=!tcc.tag] run function tcc:item/paintbrush/color_brush

tag @s remove tcc.tag
