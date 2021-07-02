advancement revoke @s only abcl:example/used_bed
data modify storage abcl:storage temp.message set value {Message: '{"translate":"block.minecraft.bed.obstructed"}', Priority: 1}
execute if entity @e[distance=..8,predicate=abcl:example/not_safe] run data modify storage abcl:storage temp.message set value {Message: '{"translate":"block.minecraft.bed.not_safe"}', Priority: 1}
execute if predicate abcl:example/no_sleep run data modify storage abcl:storage temp.message set value {Message: '{"translate":"block.minecraft.bed.no_sleep"}', Priority: 1}
execute as @s run function abcl:message/check