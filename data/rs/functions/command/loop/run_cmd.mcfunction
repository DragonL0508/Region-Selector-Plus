$data modify storage rs:cache target_region.x1 set from storage rs:data region_$(target).x1
$data modify storage rs:cache target_region.x2 set from storage rs:data region_$(target).x2
$data modify storage rs:cache target_region.y1 set from storage rs:data region_$(target).y1
$data modify storage rs:cache target_region.y2 set from storage rs:data region_$(target).y2
$data modify storage rs:cache target_region.z1 set from storage rs:data region_$(target).z1
$data modify storage rs:cache target_region.z2 set from storage rs:data region_$(target).z2

function rs:command/detection/is_in_region with storage rs:cache target_region

$execute as @a if entity @s[tag=rs.in_region] unless entity @s[tag=rs.in_region_$(target)] run function rs:command/loop/join_cmd with storage rs:data region_$(target)
$execute as @a unless entity @s[tag=rs.in_region] if entity @s[tag=rs.in_region_$(target)] run function rs:command/loop/leave_cmd with storage rs:data region_$(target)

$tag @a[tag=!rs.in_region] remove rs.in_region_$(target)
$tag @a[tag=rs.in_region] add rs.in_region_$(target)
tag @a[tag=rs.in_region] add rs.in_a_region

$execute unless score show_actionbar rs.tmp matches 1 run title @a[tag=rs.in_region] actionbar {"text": "§aYou are now in region §e§l$(target)"}

tag @a remove rs.in_region