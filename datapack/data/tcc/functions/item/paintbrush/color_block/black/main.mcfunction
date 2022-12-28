############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ black_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ black_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ black_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ black_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ black_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ black_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/black/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ black_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ black_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ black_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/black/candles
function tcc:item/paintbrush/color_brush
