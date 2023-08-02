
function sb_clock:remove_scoreboard with storage sb_clock:vars {}
execute store result score $time sb_clock__vars run time query daytime
scoreboard players operation $minute sb_clock__vars = $time sb_clock__vars
scoreboard players operation $minute sb_clock__vars %= $1000 sb_clock__vars
scoreboard players operation $hour sb_clock__vars = $time sb_clock__vars
scoreboard players operation $hour sb_clock__vars += $6000 sb_clock__vars
execute if score $minute sb_clock__vars matches 0..160 run data modify storage sb_clock:vars min_padding set value "0"
execute unless score $minute sb_clock__vars matches 0..160 run data modify storage sb_clock:vars min_padding set value ""
execute store result storage sb_clock:vars hour int 0.001 run scoreboard players get $hour sb_clock__vars
execute store result storage sb_clock:vars minute int 0.06 run scoreboard players get $minute sb_clock__vars
execute store result storage sb_clock:vars day int 1 run time query day
function sb_clock:set_scoreboard with storage sb_clock:vars {}
