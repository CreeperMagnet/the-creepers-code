############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ purple_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ purple_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ purple_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ purple_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ purple_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ purple_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/purple/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ purple_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ purple_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ purple_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/purple/candles
function tcc:item/paintbrush/color_brush
