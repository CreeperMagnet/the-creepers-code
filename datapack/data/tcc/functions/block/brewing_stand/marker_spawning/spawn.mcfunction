# Spawns the brewing stand marker

execute align xyz unless entity @e[dx=0,type=minecraft:marker,tag=tcc.brewing_stand] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["tcc.brewing_stand","tcc.tick","tcc.second_clock","tcc.ten_second_clock"]}
