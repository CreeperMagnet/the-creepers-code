# Summons markers and does wax vfx for waxing a note block

particle minecraft:wax_on ~ ~ ~ 0.5 0.5 0.5 0 30 normal
playsound minecraft:item.honeycomb.wax_on block @a[distance=..16]
execute if block ~ ~ ~ minecraft:note_block[note=1] run summon minecraft:marker ~ ~ ~ {data:{note:0},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=2] run summon minecraft:marker ~ ~ ~ {data:{note:1},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=3] run summon minecraft:marker ~ ~ ~ {data:{note:2},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=4] run summon minecraft:marker ~ ~ ~ {data:{note:3},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=5] run summon minecraft:marker ~ ~ ~ {data:{note:4},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=6] run summon minecraft:marker ~ ~ ~ {data:{note:5},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=7] run summon minecraft:marker ~ ~ ~ {data:{note:6},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=8] run summon minecraft:marker ~ ~ ~ {data:{note:7},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=9] run summon minecraft:marker ~ ~ ~ {data:{note:8},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=10] run summon minecraft:marker ~ ~ ~ {data:{note:9},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=11] run summon minecraft:marker ~ ~ ~ {data:{note:10},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=12] run summon minecraft:marker ~ ~ ~ {data:{note:11},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=13] run summon minecraft:marker ~ ~ ~ {data:{note:12},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=14] run summon minecraft:marker ~ ~ ~ {data:{note:13},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=15] run summon minecraft:marker ~ ~ ~ {data:{note:14},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=16] run summon minecraft:marker ~ ~ ~ {data:{note:15},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=17] run summon minecraft:marker ~ ~ ~ {data:{note:16},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=18] run summon minecraft:marker ~ ~ ~ {data:{note:17},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=19] run summon minecraft:marker ~ ~ ~ {data:{note:18},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=20] run summon minecraft:marker ~ ~ ~ {data:{note:19},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=21] run summon minecraft:marker ~ ~ ~ {data:{note:20},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=22] run summon minecraft:marker ~ ~ ~ {data:{note:21},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=23] run summon minecraft:marker ~ ~ ~ {data:{note:22},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
execute if block ~ ~ ~ minecraft:note_block[note=24] run summon minecraft:marker ~ ~ ~ {data:{note:23},Tags:["tcc.waxed_note_block","tcc.tick","smithed.strict","smithed.entity"]}
tag @s add tcc.tag
function tcc:block/note_block_waxing/reset_note/main
