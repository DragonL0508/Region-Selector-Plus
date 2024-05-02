#usage :
#function rs_cmd:save {id:"<ID>"}

#check
execute unless data storage rs:data this.pos1 run tellraw @s {"text": "\n§7[§c!§7] §cYou haven't selected §ePosition 1 §c!\n"}
execute unless data storage rs:data this.pos2 run tellraw @s {"text": "\n§7[§c!§7] §cYou haven't selected §ePosition 2 §c!\n"}

execute unless data storage rs:data this.pos1 run return fail
execute unless data storage rs:data this.pos2 run return fail

#cmd
$execute store result storage rs:data region_$(id).x1 int 1 run scoreboard players get max rs.this.x
$execute store result storage rs:data region_$(id).y1 int 1 run scoreboard players get max rs.this.y
$execute store result storage rs:data region_$(id).z1 int 1 run scoreboard players get max rs.this.z

$execute store result storage rs:data region_$(id).x2 int 1 run scoreboard players get min rs.this.x
$execute store result storage rs:data region_$(id).y2 int 1 run scoreboard players get min rs.this.y
$execute store result storage rs:data region_$(id).z2 int 1 run scoreboard players get min rs.this.z

$function rs:command/is_exist {id:"$(id)"}

$tellraw @s {"text": "\n§7[§a!§7] §e$(id) §ahas been saved !\n"}
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1