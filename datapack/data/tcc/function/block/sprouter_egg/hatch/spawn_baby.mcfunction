# Spawns the baby from the egg

function tcc:entity/sprouter/summon_baby
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/sprouter_egg/stage_0"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 70 normal
setblock ~ ~ ~ air
playsound tcc:block.sprouter_egg.hatch block @a[distance=..16]