#usage :
#function rs_cmd:set_joincmd {id:"<ID>",cmd:"<Command>"}

$execute unless data storage rs:data {list:["$(id)"]} run tellraw @s {"text": "\n§7[§c!§7] §e$(id) §cdoes not exist !\n"}
$execute unless data storage rs:data {list:["$(id)"]} run return 0

$data modify storage rs:data region_$(id).join_cmd set value "$(cmd)"

$tellraw @s {"text": "\n§7[§a!§7] §aThe join command of §e$(id) §ahas been set to:\n  §7§o- §f§o$(cmd)\n"}
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1