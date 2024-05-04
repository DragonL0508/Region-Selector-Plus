playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @s {"text": "\n§eAll commands:"}

tellraw @s {"text": "\n§a/function rs_cmd:wand"}
tellraw @s {"text": "§7§o- Get tools for selecting a region"}

tellraw @s {"text": "\n§a/function rs_cmd:save §b{id:\"<ID>\"}"}
tellraw @s {"text": "§7§o- Create or save a new region with ID"}

tellraw @s {"text": "\n§a/function rs_cmd:remove §b{id:\"<ID>\"}"}
tellraw @s {"text": "§7§o- Remove the region with ID"}

tellraw @s {"text": "\n§a/function rs_cmd:set_joincmd §b{id:\"<ID>\", cmd:\"<Command>\"}"}
tellraw @s {"text": "§7§o- Set the command to be executed when the player enters a specific region"}

tellraw @s {"text": "\n§a/function rs_cmd:set_leavecmd §b{id:\"<ID>\", cmd:\"<Command>\"}"}
tellraw @s {"text": "§7§o- Set the command to be executed when the player leaves a specific region"}

tellraw @s {"text": "\n§a/function rs_cmd:set_selector §b{id:\"<ID>\", selector:\"<Selector>\"}"}
tellraw @s {"text": "§7§o- Set the entities that the region will detect"}

tellraw @s {"text": "\n§a/function rs_cmd:toggle_actionbar"}
tellraw @s {"text": "§7§o- Used to decide whether to display region's information on actionbar"}