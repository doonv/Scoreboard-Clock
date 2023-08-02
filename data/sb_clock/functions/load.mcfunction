scoreboard objectives remove sb_clock__clock_display
scoreboard objectives add sb_clock__clock_display dummy {"text": "Clock", "bold": true}
scoreboard objectives setdisplay sidebar sb_clock__clock_display

scoreboard objectives remove sb_clock__vars
scoreboard objectives add sb_clock__vars dummy
scoreboard players set $1000 sb_clock__vars 1000
scoreboard players set $6000 sb_clock__vars 6000

data remove storage sb_clock:vars {}
data modify storage sb_clock:vars s set value " "

team remove sb_clock__time
team add sb_clock__time
team modify sb_clock__time color aqua
team modify sb_clock__time prefix "⏰ "

team remove sb_clock__date
team add sb_clock__date
team modify sb_clock__date color aqua
team modify sb_clock__date prefix "📆 "
