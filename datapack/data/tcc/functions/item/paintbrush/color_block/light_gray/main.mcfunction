############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ light_gray_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ light_gray_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ light_gray_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ light_gray_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ light_gray_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ light_gray_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/light_gray/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ light_gray_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ light_gray_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ light_gray_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/light_gray/candles
function tcc:item/paintbrush/color_brush
