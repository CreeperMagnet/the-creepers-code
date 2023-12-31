############################################################
# Decodes the block beneath this soul seer
############################################################

data modify storage tcc:storage root.temp.macro_input set value {selector:",type=!#tcc:inanimate"}

execute if block ~ ~-1 ~ iron_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:iron_golem"
execute if block ~ ~-1 ~ honeycomb_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:bee"
execute if block ~ ~-1 ~ sculk run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:warden"
execute if block ~ ~-1 ~ moss_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:creeper"
execute if block ~ ~-1 ~ prismarine run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:guardians"
execute if block ~ ~-1 ~ dark_prismarine run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:elder_guardian"
execute if block ~ ~-1 ~ dark_oak_planks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/dark_oak_planks"
execute if block ~ ~-1 ~ netherrack run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/netherrack"
execute if block ~ ~-1 ~ magma_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:magma_cube"
execute if block ~ ~-1 ~ amethyst_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:allay"
execute if block ~ ~-1 ~ gold_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/gold_block"
execute if block ~ ~-1 ~ slime_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:slime"
execute if block ~ ~-1 ~ bone_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/bone_block"
execute if block ~ ~-1 ~ emerald_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/emerald_block"
execute if block ~ ~-1 ~ gilded_blackstone run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:piglin_brute"
execute if block ~ ~-1 ~ nether_wart_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/nether_wart_block"
execute if block ~ ~-1 ~ #minecraft:coral_blocks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/coral_block"
execute if block ~ ~-1 ~ #tcc:dead_coral_blocks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=drowned"
execute if block ~ ~-1 ~ #tcc:froglights run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/froglight"
execute if block ~ ~-1 ~ cobweb run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:spiders"
execute if block ~ ~-1 ~ bamboo_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:panda"
execute if block ~ ~-1 ~ warped_wart_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:strider"
execute if block ~ ~-1 ~ end_stone run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/end_stone"
execute if block ~ ~-1 ~ carved_pumpkin run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:golems"
execute if block ~ ~-1 ~ purpur_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:shulker"
execute if block ~ ~-1 ~ sandstone run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/sandstone"
execute if block ~ ~-1 ~ #tcc:mushroom_blocks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:mooshroom"
execute if block ~ ~-1 ~ soul_sand run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:undead"
execute if block ~ ~-1 ~ soul_soil run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:ghast"
execute if block ~ ~-1 ~ hay_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/hay_block"
execute if block ~ ~-1 ~ snow_block run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/snow_block"
execute if block ~ ~-1 ~ packed_ice run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:stray"
execute if block ~ ~-1 ~ #tcc:suspicious_blocks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:sniffer"
execute if block ~ ~-1 ~ jungle_log run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/jungle_log"
execute if block ~ ~-1 ~ stone run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:bat"
execute if block ~ ~-1 ~ stone_bricks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:silverfish"
execute if block ~ ~-1 ~ mossy_cobblestone run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/mossy_cobblestone"
execute if block ~ ~-1 ~ glowstone run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:player"
execute if block ~ ~-1 ~ nether_bricks run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=#tcc:soul_seer/nether_bricks"

# Player heads
execute if block ~ ~-1 ~ player_head run data modify storage tcc:storage root.temp.macro_input.player_name set from block ~ ~-1 ~ SkullOwner.Name
execute if block ~ ~-1 ~ player_wall_head run data modify storage tcc:storage root.temp.macro_input.player_name set from block ~ ~-1 ~ SkullOwner.Name
execute if block ~ ~-1 ~ player_head unless data storage tcc:storage root.temp.macro_input.player_name run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:player"
execute if block ~ ~-1 ~ player_wall_head unless data storage tcc:storage root.temp.macro_input.player_name run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=minecraft:player"
execute if data storage tcc:storage root.temp.macro_input.player_name run function tcc:block/soul_seer/glow/get_head_name with storage tcc:storage root.temp.macro_input

# Sheep nonsense
execute if block ~ ~-1 ~ minecraft:black_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:15b}"
execute if block ~ ~-1 ~ minecraft:blue_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:11b}"
execute if block ~ ~-1 ~ minecraft:brown_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:12b}"
execute if block ~ ~-1 ~ minecraft:cyan_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:9b}"
execute if block ~ ~-1 ~ minecraft:gray_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:7b}"
execute if block ~ ~-1 ~ minecraft:green_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:13b}"
execute if block ~ ~-1 ~ minecraft:light_blue_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:3b}"
execute if block ~ ~-1 ~ minecraft:light_gray_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:8b}"
execute if block ~ ~-1 ~ minecraft:lime_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:5b}"
execute if block ~ ~-1 ~ minecraft:magenta_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:2b}"
execute if block ~ ~-1 ~ minecraft:orange_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:1b}"
execute if block ~ ~-1 ~ minecraft:pink_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:6b}"
execute if block ~ ~-1 ~ minecraft:purple_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:10b}"
execute if block ~ ~-1 ~ minecraft:red_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:14b}"
execute if block ~ ~-1 ~ minecraft:white_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:0b}"
execute if block ~ ~-1 ~ minecraft:yellow_wool run data modify storage tcc:storage root.temp.macro_input.selector set value ",type=sheep,nbt={Color:4b}"


function tcc:block/soul_seer/glow/glow_macro with storage tcc:storage root.temp.macro_input
