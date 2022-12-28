############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ blue_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ blue_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ blue_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ blue_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ blue_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ blue_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/blue/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ blue_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ blue_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ blue_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/blue/candles
function tcc:item/paintbrush/color_brush
