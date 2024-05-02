$execute if data storage rs:data {list:["$(id)"]} run return 0

$data modify storage rs:data list append value "$(id)"