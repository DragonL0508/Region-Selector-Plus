summon marker 0 0 0 {UUID:[I;0,0,0,805023859]}

execute as @e[type=marker] if data entity @s {UUID:[I;0,0,0,805023859]} run data modify entity @s Tags set from storage rs:data list

$execute as @e[type=marker] if data entity @s {UUID:[I;0,0,0,805023859]} run tag @s remove $(id)

execute as @e[type=marker] if data entity @s {UUID:[I;0,0,0,805023859]} run data modify storage rs:data list set from entity @s Tags

execute as @e[type=marker] if data entity @s {UUID:[I;0,0,0,805023859]} run kill @s