kill @e[tag=rs]
#
summon marker 0 0 0 {Tags:["rs.x1","rs.x","rs"]}
summon marker 0 0 0 {Tags:["rs.x2","rs.x","rs"]}
summon marker 0 0 0 {Tags:["rs.y1","rs.y","rs"]}
summon marker 0 0 0 {Tags:["rs.y2","rs.y","rs"]}
summon marker 0 0 0 {Tags:["rs.z1","rs.z","rs"]}
summon marker 0 0 0 {Tags:["rs.z2","rs.z","rs"]}

#
execute store result score @e[tag=rs.x1] rs.this.x run data get storage rs:data this.pos1[0]
execute store result score @e[tag=rs.y1] rs.this.y run data get storage rs:data this.pos1[1]
execute store result score @e[tag=rs.z1] rs.this.z run data get storage rs:data this.pos1[2]
execute store result score @e[tag=rs.x2] rs.this.x run data get storage rs:data this.pos2[0]
execute store result score @e[tag=rs.y2] rs.this.y run data get storage rs:data this.pos2[1]
execute store result score @e[tag=rs.z2] rs.this.z run data get storage rs:data this.pos2[2]

data modify storage rs:data absolute.min set from storage rs:data this.pos2

#get bigger
scoreboard players set min rs.this.x 999999999
scoreboard players set min rs.this.y 999999999
scoreboard players set min rs.this.z 999999999

scoreboard players operation min rs.this.x < @e[type=marker,tag=rs.x] rs.this.x
scoreboard players operation min rs.this.y < @e[type=marker,tag=rs.y] rs.this.y
scoreboard players operation min rs.this.z < @e[type=marker,tag=rs.z] rs.this.z

execute store result storage rs:data absolute.min[0] int 1 run scoreboard players get min rs.this.x
execute store result storage rs:data absolute.min[1] int 1 run scoreboard players get min rs.this.y
execute store result storage rs:data absolute.min[2] int 1 run scoreboard players get min rs.this.z

#kill
kill @e[tag=rs]