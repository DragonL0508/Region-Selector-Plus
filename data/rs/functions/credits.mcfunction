#
execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1 1
tellraw @a {"text": "\n§7[§a+§7] §aRegion Selector Plus"}
tellraw @a {"text": "\n§8§o* A region library datapack made by §e§oDragonL §8§o*"}
tellraw @a {"text": "\n§7type §a/function rs_cmd:help §7for more information\n"}

#
scoreboard players set loaded rs.tmp 1