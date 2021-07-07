summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["gh.bhook","gh.new_hook","global.ignore"],DisabledSlots:4144959}
scoreboard players operation @e[tag=gh.new_hook,limit=1] gh.player_id = @s gh.player_id
execute store result score $temp_x2 gh.dummy run data get entity @e[tag=gh.new_hook,limit=1] Pos[0] 10000
execute store result score $temp_y2 gh.dummy run data get entity @e[tag=gh.new_hook,limit=1] Pos[1] 10000
execute store result score $temp_z2 gh.dummy run data get entity @e[tag=gh.new_hook,limit=1] Pos[2] 10000
tp @e[tag=gh.new_hook,limit=1] ^ ^ ^2.9
execute store result score $temp_xd gh.dummy run data get entity @e[tag=gh.new_hook,limit=1] Pos[0] 10000
execute store result score $temp_yd gh.dummy run data get entity @e[tag=gh.new_hook,limit=1] Pos[1] 10000
execute store result score $temp_zd gh.dummy run data get entity @e[tag=gh.new_hook,limit=1] Pos[2] 10000
tp @e[tag=gh.new_hook,limit=1] ~ ~ ~
scoreboard players operation $temp_xd gh.dummy -= $temp_x2 gh.dummy
scoreboard players operation $temp_yd gh.dummy -= $temp_y2 gh.dummy
scoreboard players operation $temp_zd gh.dummy -= $temp_z2 gh.dummy
execute store result entity @e[tag=gh.new_hook,limit=1] Motion[0] double 0.0001 run scoreboard players get $temp_xd gh.dummy
execute store result entity @e[tag=gh.new_hook,limit=1] Motion[1] double 0.0001 run scoreboard players get $temp_yd gh.dummy
execute store result entity @e[tag=gh.new_hook,limit=1] Motion[2] double 0.0001 run scoreboard players get $temp_zd gh.dummy
tag @e[tag=gh.new_hook,limit=1] remove gh.new_hook
tag @s add gh.using_bhook
playsound minecraft:entity.fishing_bobber.throw player @a ~ ~ ~ 1 0.6