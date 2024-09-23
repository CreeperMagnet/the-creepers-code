# Gives the proper tea effect

data remove storage tcc:temp root

execute if entity @s[advancements={tcc:technical/consume_item/tea={antitoxin=true}}] run data modify storage tcc:temp root.macro_input set value {id:"antitoxin",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={clearsight=true}}] run data modify storage tcc:temp root.macro_input set value {id:"clearsight",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={illumination=true}}] run data modify storage tcc:temp root.macro_input set value {id:"illumination",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={obscurity=true}}] run data modify storage tcc:temp root.macro_input set value {id:"obscurity",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={plenty=true}}] run data modify storage tcc:temp root.macro_input set value {id:"plenty",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={purity=true}}] run data modify storage tcc:temp root.macro_input set value {id:"purity",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={serendipity=true}}] run data modify storage tcc:temp root.macro_input set value {id:"serendipity",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={stability=true}}] run data modify storage tcc:temp root.macro_input set value {id:"stability",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={steadiness=true}}] run data modify storage tcc:temp root.macro_input set value {id:"steadiness",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={vigor=true}}] run data modify storage tcc:temp root.macro_input set value {id:"vigor",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={vitality=true}}] run data modify storage tcc:temp root.macro_input set value {id:"vitality",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={vivacity=true}}] run data modify storage tcc:temp root.macro_input set value {id:"vivacity",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={salubrity=true}}] run data modify storage tcc:temp root.macro_input set value {id:"salubrity",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={sealing=true}}] run data modify storage tcc:temp root.macro_input set value {id:"sealing",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={stillness=true}}] run data modify storage tcc:temp root.macro_input set value {id:"stillness",duration:300}
execute if entity @s[advancements={tcc:technical/consume_item/tea={untangling=true}}] run data modify storage tcc:temp root.macro_input set value {id:"untangling",duration:300}

execute if entity @s[advancements={tcc:technical/consume_item/tea={antitoxin_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"antitoxin",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={clearsight_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"clearsight",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={illumination_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"illumination",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={obscurity_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"obscurity",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={plenty_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"plenty",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={purity_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"purity",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={serendipity_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"serendipity",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={stability_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"stability",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={steadiness_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"steadiness",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={vigor_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"vigor",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={vitality_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"vitality",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={vivacity_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"vivacity",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={salubrity_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"salubrity",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={sealing_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"sealing",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={stillness_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"stillness",duration:450}
execute if entity @s[advancements={tcc:technical/consume_item/tea={untangling_extended=true}}] run data modify storage tcc:temp root.macro_input set value {id:"untangling",duration:450}

function tcc:item/tea/drink/macro with storage tcc:temp root.macro_input

function tcc:item/tea/clear/main

advancement revoke @s only tcc:technical/consume_item/tea