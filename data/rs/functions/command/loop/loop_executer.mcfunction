data modify storage rs:cache target set from storage rs:cache list[0]
data remove storage rs:cache list[0]

function rs:command/loop/run_cmd with storage rs:cache

data remove storage rs:cache target
execute if data storage rs:cache list[0] run function rs:command/loop/loop_executer