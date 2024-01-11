# Finishes the spell

playsound tcc:entity.iceologer.cast_spell hostile @a[distance=..16]
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.UUID set from entity @s UUID
tag @s add tcc.iceologer_damage_source
execute as @e[predicate=tcc:entity/illager_target,limit=1,distance=..16,sort=nearest] at @s run function tcc:entity/iceologer/spell_completed_target
tag @s remove tcc.iceologer_damage_source
data modify entity @s WanderTarget set value {X:0,Y:0,Z:0}
execute store result entity @s WanderTarget.X int 1 run data get storage tcc:storage root.temp.pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get storage tcc:storage root.temp.pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get storage tcc:storage root.temp.pos[2]
