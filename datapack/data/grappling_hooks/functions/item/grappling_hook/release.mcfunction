scoreboard players set $temp_0 gh.dummy 0
execute as @e[tag=gh.hook,tag=!gh.stuck_hook] if score @s gh.player_id = @p gh.player_id run scoreboard players set $temp_0 gh.dummy 1
execute if score $temp_0 gh.dummy matches 1 run tag @s remove gh.using_hook
execute if score $temp_0 gh.dummy matches 1 run playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5
execute if score $temp_0 gh.dummy matches 1 as @e[tag=gh.hook,tag=!gh.stuck_hook] if score @s gh.player_id = @p gh.player_id run kill @s
execute if score $temp_0 gh.dummy matches 0 as @e[tag=gh.hook,tag=gh.stuck_hook] if score @s gh.player_id = @p gh.player_id run tag @s add gh.reeling