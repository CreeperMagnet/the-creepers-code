############################################################
# Cycles the poses of an armor stand
############################################################

playsound tcc:item.wrench.pose_armor_stand player @a[distance=..16]
scoreboard players set @s tcc.dummy 0
execute store success score @s[scores={tcc.dummy=0},tag=!tcc.posed_armor_stand] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/assert_dominance
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.assert_dominance] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/battle_ready
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.battle_ready] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/bizarre
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.bizarre] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/despair
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.despair] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/outstretched
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.outstretched] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/point
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.point] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/praise
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.praise] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/running
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.running] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/shooting
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.shooting] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/throwing
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.throwing] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/yay
execute store success score @s[scores={tcc.dummy=0},tag=tcc.posed_armor_stand.yay] tcc.dummy run function tcc:item/wrench/armor_stand_poses/set_pose/none
