#usage :
#function rs_cmd:remove {id:"<ID>"}

$execute unless data storage rs:data {list:["$(id)"]} run tellraw @s {"text": "\n§7[§c!§7] §e$(id) §cdoes not exist !\n"}
$execute unless data storage rs:data {list:["$(id)"]} run return 0

#remove
$data remove storage rs:data region_$(id)
$function rs:command/remove_from_list {id:"$(id)"}

#if there's only 1
$execute if data storage rs:data {list:["$(id)"]} unless data storage rs:data list[1] run data remove storage rs:data list

$tellraw @s {"text": "\n§7[§a!§7] §e$(id) §ahas been removed !\n"}
playsound entity.zombie.break_wooden_door master @s ~ ~ ~ 1 1 1