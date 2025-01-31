# Effects to run on success

execute if data storage tcc:temp root.item.components{"minecraft:custom_name":'"Sonic Screwdriver"'} run return run function tcc:item/saplink/sonic_screwdriver/success_vfx
playsound tcc:item.saplink.used.success player @a[distance=..16] ~ ~ ~