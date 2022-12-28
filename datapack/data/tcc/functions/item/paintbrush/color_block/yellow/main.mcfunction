############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ yellow_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ yellow_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ yellow_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ yellow_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ yellow_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ yellow_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/yellow/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ yellow_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ yellow_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ yellow_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/yellow/candles
function tcc:item/paintbrush/color_brush
