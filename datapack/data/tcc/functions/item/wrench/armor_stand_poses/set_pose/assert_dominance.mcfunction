############################################################
# Sets an armor stand pose
############################################################

function tcc:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add tcc.posed_armor_stand.assert_dominance
data modify entity @s Pose set value {LeftArm:[1f,0f,270f],RightArm:[359f,0f,90f]}