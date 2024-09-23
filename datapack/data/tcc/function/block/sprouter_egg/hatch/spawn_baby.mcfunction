# Spawns the baby from the egg

function tcc:entity/sprouter/summon_baby
particle minecraft:item{item:{id:"warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":330299}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 70 normal
setblock ~ ~ ~ air
playsound tcc:block.sprouter_egg.hatch block @a[distance=..16]