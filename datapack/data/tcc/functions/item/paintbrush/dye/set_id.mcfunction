############################################################
# Finds the proper dye in their inventory
############################################################

scoreboard players set #temp_0 tcc.dummy 1000
scoreboard players reset #temp_1 tcc.dummy
scoreboard players reset #temp_2 tcc.dummy

function tcc:item/paintbrush/dye/get_slot {color:"black"}
function tcc:item/paintbrush/dye/get_slot {color:"blue"}
function tcc:item/paintbrush/dye/get_slot {color:"brown"}
function tcc:item/paintbrush/dye/get_slot {color:"cyan"}
function tcc:item/paintbrush/dye/get_slot {color:"gray"}
function tcc:item/paintbrush/dye/get_slot {color:"green"}
function tcc:item/paintbrush/dye/get_slot {color:"light_blue"}
function tcc:item/paintbrush/dye/get_slot {color:"light_gray"}
function tcc:item/paintbrush/dye/get_slot {color:"lime"}
function tcc:item/paintbrush/dye/get_slot {color:"magenta"}
function tcc:item/paintbrush/dye/get_slot {color:"orange"}
function tcc:item/paintbrush/dye/get_slot {color:"pink"}
function tcc:item/paintbrush/dye/get_slot {color:"purple"}
function tcc:item/paintbrush/dye/get_slot {color:"red"}
function tcc:item/paintbrush/dye/get_slot {color:"white"}
function tcc:item/paintbrush/dye/get_slot {color:"yellow"}

scoreboard players reset #temp_0 tcc.dummy
scoreboard players reset #temp_1 tcc.dummy
