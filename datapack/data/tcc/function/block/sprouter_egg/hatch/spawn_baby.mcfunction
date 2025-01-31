# Spawns the baby from the egg

function tcc:entity/sprouter/summon_baby
function tcc:block/break_particles/spawn_generic
setblock ~ ~ ~ air
playsound tcc:block.sprouter_egg.hatch block @a[distance=..16]