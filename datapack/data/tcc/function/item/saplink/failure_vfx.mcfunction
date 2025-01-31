# Effects to run on failure

execute if data storage tcc:temp root.item.components{"minecraft:custom_name":'"Sonic Screwdriver"'} run return run function tcc:item/saplink/sonic_screwdriver/failure_vfx
playsound tcc:item.saplink.used.failure player @a[distance=..16] ~ ~ ~