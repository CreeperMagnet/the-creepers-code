############################################################
# Main function for checking whether the rest of the functions ought to be run
############################################################

execute if data entity @s warden_spawn_tracker{ticks_since_last_warning:25} run function tcc:block/echo_shard_renewability/scan_for_shrieker/scan_bottom
execute if data entity @s warden_spawn_tracker{ticks_since_last_warning:60} run function tcc:block/echo_shard_renewability/scan_for_shrieker/scan_top