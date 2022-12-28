############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ magenta_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ magenta_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ magenta_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ magenta_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ magenta_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ magenta_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/magenta/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ magenta_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ magenta_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ magenta_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/magenta/candles
function tcc:item/paintbrush/color_brush
