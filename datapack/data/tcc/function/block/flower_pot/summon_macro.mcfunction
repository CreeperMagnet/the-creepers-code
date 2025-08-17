# Summons an entity depending on the macro input type

$summon minecraft:item_display ~ ~ ~ {Tags:["tcc.block","tcc.item_display","tcc.$(type)_flower_pot","tcc.flower_pot","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5003f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.001f,1.001f,1.001f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{type:"$(type)"},"minecraft:item_model":"tcc:block/flower_pot/$(type)"}},view_range:4.0f}
