############################################################
# Colors a block
############################################################

execute if block ~ ~ ~ #tcc:candle_cakes run setblock ~ ~ ~ cyan_candle_cake
execute if block ~ ~ ~ #tcc:concrete run setblock ~ ~ ~ cyan_concrete
execute if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ cyan_wool
execute if block ~ ~ ~ #minecraft:wool_carpets run setblock ~ ~ ~ cyan_carpet
execute if block ~ ~ ~ #tcc:glass run setblock ~ ~ ~ cyan_stained_glass
execute if block ~ ~ ~ #tcc:glass_panes run setblock ~ ~ ~ cyan_stained_glass_pane
execute if block ~ ~ ~ #minecraft:shulker_boxes run function tcc:item/paintbrush/color_block/cyan/shulker_boxes
execute if block ~ ~ ~ #tcc:glazed_terracotta run setblock ~ ~ ~ cyan_glazed_terracotta
execute if block ~ ~ ~ #tcc:concrete_powder run setblock ~ ~ ~ cyan_concrete_powder
execute if block ~ ~ ~ #tcc:terracotta run setblock ~ ~ ~ cyan_terracotta
execute if block ~ ~ ~ #minecraft:candles run function tcc:item/paintbrush/color_block/cyan/candles
function tcc:item/paintbrush/color_brush
