$scoreboard players set $(hour):$(min_padding)$(minute) sb_clock__clock_display 1
$scoreboard players set $(day) sb_clock__clock_display 0
$team join sb_clock__time $(hour):$(min_padding)$(minute)
$team join sb_clock__date $(day)