############################################################
# Sets an armor stand pose
############################################################

function tcc:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add tcc.posed_armor_stand.outstretched
data modify entity @s Pose set value {LeftArm:[270f,359f,0f],RightArm:[270f,1f,0f]}