############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ gray_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ gray_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ gray_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ gray_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ gray_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ gray_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/gray/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ gray_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ gray_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ gray_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/gray/candles
function tcc:item/paintbrush/color_brush
