execute as @e[type=area_effect_cloud,tag=rs.pos1] at @s run function rs:command/set_position_1 with entity @s
execute as @e[type=area_effect_cloud,tag=rs.pos2] at @s run function rs:command/set_position_2 with entity @s

execute as @e[tag=rs.show_pos] run function rs:command/show_pos

#save player's position to scoreboard
execute as @e store result score @s rs.player.x run data get entity @s Pos[0]
execute as @e store result score @s rs.player.y run data get entity @s Pos[1]
execute as @e store result score @s rs.player.z run data get entity @s Pos[2]

#loop the region list
tag @e remove rs.in_a_region
data modify storage rs:cache list set from storage rs:data list
execute if data storage rs:data list run function rs:command/loop/loop_executer