############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ orange_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ orange_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ orange_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ orange_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ orange_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ orange_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/orange/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ orange_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ orange_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ orange_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/orange/candles
function tcc:item/paintbrush/color_brush
