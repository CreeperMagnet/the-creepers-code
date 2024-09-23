# Commands to run every second

execute if entity @s[tag=tcc.nether_reactor_core.on] run return run function tcc:block/nether_reactor/check_casing/on
function tcc:block/nether_reactor/check_casing/off