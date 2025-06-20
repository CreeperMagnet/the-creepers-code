# Decodes the block beneath this soul seer

data modify storage tcc:temp root.macro_input set value {selector:",type=!#tcc:inanimate"}

execute if block ~ ~-1 ~ minecraft:iron_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:iron_golem"
execute if block ~ ~-1 ~ minecraft:acacia_log run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:armadillo"
execute if block ~ ~-1 ~ #minecraft:pale_oak_logs run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:creaking"
execute if block ~ ~-1 ~ minecraft:chiseled_tuff run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:breeze"
execute if block ~ ~-1 ~ minecraft:honeycomb_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:bee"
execute if block ~ ~-1 ~ minecraft:sculk run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:warden"
execute if block ~ ~-1 ~ minecraft:moss_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:creeper"
execute if block ~ ~-1 ~ minecraft:prismarine run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:guardians"
execute if block ~ ~-1 ~ minecraft:dark_prismarine run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:elder_guardian"
execute if block ~ ~-1 ~ minecraft:dark_oak_planks run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/dark_oak_planks"
execute if block ~ ~-1 ~ minecraft:netherrack run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/netherrack"
execute if block ~ ~-1 ~ minecraft:magma_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:magma_cube"
execute if block ~ ~-1 ~ minecraft:amethyst_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:allay"
execute if block ~ ~-1 ~ minecraft:gold_block run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/gold_block"
execute if block ~ ~-1 ~ minecraft:slime_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:slime"
execute if block ~ ~-1 ~ minecraft:bone_block run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/bone_block"
execute if block ~ ~-1 ~ minecraft:emerald_block run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/emerald_block"
execute if block ~ ~-1 ~ minecraft:gilded_blackstone run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:piglin_brute"
execute if block ~ ~-1 ~ minecraft:nether_wart_block run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/nether_wart_block"
execute if block ~ ~-1 ~ #minecraft:coral_blocks run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/coral_block"
execute if block ~ ~-1 ~ #tcc:dead_coral_blocks run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:drowned"
execute if block ~ ~-1 ~ #tcc:froglights run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/froglight"
execute if block ~ ~-1 ~ minecraft:cobweb run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:spiders"
execute if block ~ ~-1 ~ minecraft:bamboo_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:panda"
execute if block ~ ~-1 ~ minecraft:warped_wart_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:strider"
execute if block ~ ~-1 ~ minecraft:end_stone run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/end_stone"
execute if block ~ ~-1 ~ minecraft:carved_pumpkin run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:golems"
execute if block ~ ~-1 ~ minecraft:purpur_block run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:shulker"
execute if block ~ ~-1 ~ minecraft:sandstone run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/sandstone"
execute if block ~ ~-1 ~ #tcc:mushroom_blocks run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:mooshroom"
execute if block ~ ~-1 ~ minecraft:soul_sand run data modify storage tcc:temp root.macro_input.selector set value ",type=#minecraft:undead"
execute if block ~ ~-1 ~ minecraft:soul_soil run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:ghast"
execute if block ~ ~-1 ~ minecraft:hay_block run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/hay_block"
execute if block ~ ~-1 ~ minecraft:snow_block run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/snow_block"
execute if block ~ ~-1 ~ minecraft:packed_ice run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:stray"
execute if block ~ ~-1 ~ #tcc:suspicious_blocks run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sniffer"
execute if block ~ ~-1 ~ minecraft:jungle_log run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/jungle_log"
execute if block ~ ~-1 ~ minecraft:stone run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:bat"
execute if block ~ ~-1 ~ minecraft:stone_bricks run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:silverfish"
execute if block ~ ~-1 ~ minecraft:mossy_cobblestone run data modify storage tcc:temp root.macro_input.selector set value ",type=#minecraft:zombies"
execute if block ~ ~-1 ~ minecraft:glowstone run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:player"
execute if block ~ ~-1 ~ minecraft:nether_bricks run data modify storage tcc:temp root.macro_input.selector set value ",type=#tcc:soul_seer/nether_bricks"

# Player heads
execute if block ~ ~-1 ~ minecraft:player_head run data modify storage tcc:temp root.macro_input.player_name set from block ~ ~-1 ~ profile.name
execute if block ~ ~-1 ~ minecraft:player_wall_head run data modify storage tcc:temp root.macro_input.player_name set from block ~ ~-1 ~ profile.name
execute if block ~ ~-1 ~ minecraft:player_head unless data storage tcc:temp root.macro_input.player_name run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:player"
execute if block ~ ~-1 ~ minecraft:player_wall_head unless data storage tcc:temp root.macro_input.player_name run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:player"
execute if data storage tcc:temp root.macro_input.player_name run function tcc:block/soul_seer/glow/get_head_name with storage tcc:temp root.macro_input

# Sheep nonsense
execute if block ~ ~-1 ~ minecraft:black_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:15b}"
execute if block ~ ~-1 ~ minecraft:blue_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:11b}"
execute if block ~ ~-1 ~ minecraft:brown_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:12b}"
execute if block ~ ~-1 ~ minecraft:cyan_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:9b}"
execute if block ~ ~-1 ~ minecraft:gray_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:7b}"
execute if block ~ ~-1 ~ minecraft:green_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:13b}"
execute if block ~ ~-1 ~ minecraft:light_blue_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:3b}"
execute if block ~ ~-1 ~ minecraft:light_gray_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:8b}"
execute if block ~ ~-1 ~ minecraft:lime_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:5b}"
execute if block ~ ~-1 ~ minecraft:magenta_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:2b}"
execute if block ~ ~-1 ~ minecraft:orange_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:1b}"
execute if block ~ ~-1 ~ minecraft:pink_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:6b}"
execute if block ~ ~-1 ~ minecraft:purple_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:10b}"
execute if block ~ ~-1 ~ minecraft:red_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:14b}"
execute if block ~ ~-1 ~ minecraft:white_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:0b}"
execute if block ~ ~-1 ~ minecraft:yellow_wool run data modify storage tcc:temp root.macro_input.selector set value ",type=minecraft:sheep,nbt={Color:4b}"


function tcc:block/soul_seer/glow/glow_macro with storage tcc:temp root.macro_input
