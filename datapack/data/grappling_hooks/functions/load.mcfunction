scoreboard objectives add gh.dummy dummy
scoreboard objectives add gh.wfstick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add gh.delay dummy
scoreboard objectives add gh.bdelay dummy
scoreboard objectives add gh.player_id dummy

scoreboard players set $cons.rng_a gh.dummy 1103515245
execute store result score $cons.rng_seed gh.dummy run data get entity @e[limit=1,sort=random] UUID[0]
scoreboard players set $cons.-100 gh.dummy -100
scoreboard players set $cons.-25 gh.dummy -25
scoreboard players set $cons.-10 gh.dummy -10
scoreboard players set $cons.-5 gh.dummy -5
scoreboard players set $cons.-3 gh.dummy -3
scoreboard players set $cons.-2 gh.dummy -2
scoreboard players set $cons.-1 gh.dummy -1
scoreboard players set $cons.2 gh.dummy 2
scoreboard players set $cons.3 gh.dummy 3
scoreboard players set $cons.4 gh.dummy 4
scoreboard players set $cons.5 gh.dummy 5
scoreboard players set $cons.10 gh.dummy 10
scoreboard players set $cons.11 gh.dummy 11
scoreboard players set $cons.16 gh.dummy 16
scoreboard players set $cons.25 gh.dummy 25
scoreboard players set $cons.100 gh.dummy 100