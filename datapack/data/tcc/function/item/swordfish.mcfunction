# Makes swordfish work

damage @s[advancements={tcc:technical/consume_item/swordfish={sharpness=false,any=true}}] 10.0 tcc:swordfish by @s from @s
damage @s[advancements={tcc:technical/consume_item/swordfish={sharpness_1=true}}] 14.0 tcc:swordfish by @s from @s
damage @s[advancements={tcc:technical/consume_item/swordfish={sharpness_2=true}}] 18.0 tcc:swordfish by @s from @s
damage @s[advancements={tcc:technical/consume_item/swordfish={sharpness_3=true}}] 22.0 tcc:swordfish by @s from @s
damage @s[advancements={tcc:technical/consume_item/swordfish={sharpness_4=true}}] 26.0 tcc:swordfish by @s from @s
damage @s[advancements={tcc:technical/consume_item/swordfish={sharpness_5=true}}] 30.0 tcc:swordfish by @s from @s
advancement grant @s[gamemode=!creative,nbt=!{Health:0.0f},advancements={tcc:technical/consume_item/swordfish={sharpness_5=true}}] only tcc:minecraft/husbandry/swordfish

advancement revoke @s only tcc:technical/consume_item/swordfish