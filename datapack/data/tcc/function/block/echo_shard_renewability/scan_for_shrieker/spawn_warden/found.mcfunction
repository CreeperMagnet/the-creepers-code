# Runs when the scan hits the shrieker

data remove storage tcc:temp root
data modify storage tcc:temp root.macro_input.UUID set from entity @s UUID
function tcc:block/echo_shard_renewability/scan_for_shrieker/spawn_warden/summon_angry_warden_macro with storage tcc:temp root.macro_input
tag @s remove tcc.needs_to_spawn_warden