############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ light_blue_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ light_blue_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ light_blue_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ light_blue_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ light_blue_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ light_blue_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/light_blue/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ light_blue_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ light_blue_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ light_blue_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/light_blue/candles
function tcc:item/paintbrush/color_brush
