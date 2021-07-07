############################################################
# Description: Starts the iteration of z
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy=0}] run tp @s[tag=!global.ignore.pos] ~ ~ ~
execute if entity @s[scores={tcc.dummy=0}] run particle dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 100 force
execute if entity @s[scores={tcc.dummy=0}] run playsound tcc:block.gobblerift.teleport_player block @a[distance=..16]
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1}] tcc.dummy 1
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~1 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2..3}] tcc.dummy 2
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~2 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4..7}] tcc.dummy 4
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~4 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8..15}] tcc.dummy 8
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~8 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16..31}] tcc.dummy 16
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~16 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=32..63}] tcc.dummy 32
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~32 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=64..127}] tcc.dummy 64
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~64 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=128..255}] tcc.dummy 128
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~128 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=256..511}] tcc.dummy 256
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~256 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=512..1023}] tcc.dummy 512
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~512 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1024..2047}] tcc.dummy 1024
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~1024 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2048..4095}] tcc.dummy 2048
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~2048 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4096..8191}] tcc.dummy 4096
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~4096 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8192..16383}] tcc.dummy 8192
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~8192 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16384..32767}] tcc.dummy 16384
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~16384 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=32768..65535}] tcc.dummy 32768
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~32768 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=65536..131071}] tcc.dummy 65536
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~65536 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=131072..262143}] tcc.dummy 131072
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~131072 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=262144..524287}] tcc.dummy 262144
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~262144 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=524288..1048575}] tcc.dummy 524288
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~524288 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=1048576..2097151}] tcc.dummy 1048576
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~1048576 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=2097152..4194303}] tcc.dummy 2097152
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~2097152 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=4194304..8388607}] tcc.dummy 4194304
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~4194304 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=8388608..16777215}] tcc.dummy 8388608
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~8388608 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players remove @s[scores={tcc.dummy=16777216..}] tcc.dummy 16777216
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~16777216 run function tcc:item/riftjuice_bottle/iterate_z




execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-1}] tcc.dummy 1
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-1 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-3..-2}] tcc.dummy 2
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-2 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-7..-4}] tcc.dummy 4
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-4 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-15..-8}] tcc.dummy 8
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-8 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-31..-16}] tcc.dummy 16
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-16 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-63..-32}] tcc.dummy 32
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-32 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-127..-64}] tcc.dummy 64
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-64 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-255..-128}] tcc.dummy 128
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-128 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-511..-256}] tcc.dummy 256
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-256 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-1023..-512}] tcc.dummy 512
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-512 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-2047..-1024}] tcc.dummy 1024
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-1024 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-4095..-2048}] tcc.dummy 2048
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-2048 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-8191..-4096}] tcc.dummy 4096
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-4096 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-16383..-8192}] tcc.dummy 8192
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-8192 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-32767..-16384}] tcc.dummy 16384
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-16384 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-65535..-32768}] tcc.dummy 32768
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-32768 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-131071..-65536}] tcc.dummy 65536
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-65536 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-262143..-131072}] tcc.dummy 131072
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-131072 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-524287..-262144}] tcc.dummy 262144
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-262144 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-1048575..-524288}] tcc.dummy 524288
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-524288 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-2097151..-1048576}] tcc.dummy 1048576
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-1048576 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-4194303..-2097152}] tcc.dummy 2097152
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-2097152 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-8388607..-4194304}] tcc.dummy 4194304
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-4194304 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=-16777215..-8388608}] tcc.dummy 8388608
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-8388608 run function tcc:item/riftjuice_bottle/iterate_z
execute store success score tcc.temp_0 tcc.dummy run scoreboard players add @s[scores={tcc.dummy=..-16777216}] tcc.dummy 16777216
execute if score tcc.temp_0 tcc.dummy matches 1 positioned ~ ~ ~-16777216 run function tcc:item/riftjuice_bottle/iterate_z
