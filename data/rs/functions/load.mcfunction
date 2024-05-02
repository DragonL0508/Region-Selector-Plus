#declare storage rs:data
#declare storage rs:cache

data remove storage rs:data this
data remove storage rs:data absolute
scoreboard objectives add rs.tmp dummy {"text": "Region selector - tmp"}
scoreboard objectives add rs.this.x dummy {"text": "Region selector - this region X"}
scoreboard objectives add rs.this.y dummy {"text": "Region selector - this region Y"}
scoreboard objectives add rs.this.z dummy {"text": "Region selector - this region Z"}
scoreboard objectives add rs.player.x dummy {"text": "Region selector - player's X"}
scoreboard objectives add rs.player.y dummy {"text": "Region selector - player's Y"}
scoreboard objectives add rs.player.z dummy {"text": "Region selector - player's Z"}

#
scoreboard players reset * rs.this.x
scoreboard players reset * rs.this.y
scoreboard players reset * rs.this.z

forceload add 0 0

#show credits
scoreboard players reset loaded rs.tmp
execute unless score loaded rs.tmp matches 1 run function rs:credits