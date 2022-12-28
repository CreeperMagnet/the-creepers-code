############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ green_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ green_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ green_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ green_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ green_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ green_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/green/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ green_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ green_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ green_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/green/candles
function tcc:item/paintbrush/color_brush
