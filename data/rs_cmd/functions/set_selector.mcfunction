#usage :
#function rs_cmd:set_selector {id:"<ID>",selector:"<Selector>"}

$execute unless data storage rs:data {list:["$(id)"]} run tellraw @s {"text": "\n§7[§c!§7] §e$(id) §cdoes not exist !\n"}
$execute unless data storage rs:data {list:["$(id)"]} run return 0

$data modify storage rs:data region_$(id).selector set value "$(selector)"

$tellraw @s {"text": "\n§7[§a!§7] §aThe selector of §e$(id) §ahas been set to:\n  §7§o- §f§o$(selector)\n"}
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1