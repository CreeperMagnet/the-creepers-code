# Functions to run off players every second

# Cursed crown tickdown
execute if entity @s[scores={tcc.cursed_crown_cooldown=0..}] run function tcc:item/cursed_crown/tickdown

# Compendiums maintaining after death
execute if entity @s[tag=tcc.needs_to_respawn_with_compendium,nbt=!{Health:0f}] if loaded ~ ~ ~ run function tcc:entity/player/die/respawn_with_compendium

# Enable emoji trigger due to https://github.com/CreeperMagnet/the-creepers-code/issues/280
scoreboard players enable @s tcc.emoji

# Stop if in spectator mode
execute if entity @s[gamemode=spectator] run return 0

# Boomerang Throwing Cooldown
scoreboard players remove @s[scores={tcc.boomerang_cooldown=1..}] tcc.boomerang_cooldown 1

# Makes recovery compass code work
execute if items entity @s weapon.* minecraft:recovery_compass[!minecraft:custom_data] run function tcc:item/recovery_compass/holding

# Fix for striders and custom WFOAS
execute if entity @s[tag=tcc.on_strider] run function tcc:item/warped_fungus_on_a_stick/strider_fix/second_clock

# Echo shard renewability via shriekers
execute store result score @s tcc.dummy run data get entity @s warden_spawn_tracker.ticks_since_last_warning
execute if score @s tcc.dummy matches 10..110 align xyz positioned ~0.5 ~ ~0.5 run function tcc:block/echo_shard_renewability/main
