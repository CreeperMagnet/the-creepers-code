# Sets an armor stand pose

function tcc:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add tcc.posed_armor_stand.praise
data modify entity @s Pose set value {Head:[320f,0f,0f],LeftArm:[210f,0f,0f],RightArm:[210f,0f,0f]}