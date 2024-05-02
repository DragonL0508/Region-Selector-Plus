playsound block.note_block.harp master @s ~ ~ ~ 1 0.5 1

scoreboard players add show_actionbar rs.tmp 1
execute if score show_actionbar rs.tmp matches 2.. run scoreboard players reset show_actionbar rs.tmp

execute unless score show_actionbar rs.tmp matches 1 run tellraw @s {"text": "\n§7[§a!§7] §aThe actionbar will now display the region the player is in !\n"}
execute if score show_actionbar rs.tmp matches 1 run tellraw @s {"text": "\n§7[§a!§7] §aThe actionbar now §cno longer §adisplays the region the player is in !\n"}