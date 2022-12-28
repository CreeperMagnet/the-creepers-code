############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ white_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ white_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ white_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ white_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ white_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ white_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/white/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ white_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ white_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ white_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/white/candles
function tcc:item/paintbrush/color_brush
