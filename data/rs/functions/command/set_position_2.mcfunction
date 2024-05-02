data modify storage rs:data this.pos2 set from entity @s Pos
$say $(Pos)
execute align xyz run summon block_display ~ ~ ~ {Glowing:1b,block_state:{Name:"minecraft:ice"},Tags:["rs.show_pos"]}
playsound block.note_block.bit master @a ~ ~ ~ 1 1 0

execute if data storage rs:data this.pos1 if data storage rs:data this.pos2 run function rs:command/operation

kill @s