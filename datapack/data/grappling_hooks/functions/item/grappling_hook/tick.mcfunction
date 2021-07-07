particle minecraft:firework
scoreboard players add @s gh.dummy 1
execute unless entity @s[tag=gh.stuck_hook] run playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 0.2 1
execute unless entity @s[tag=gh.stuck_hook] store result score $temp_xm gh.dummy run data get entity @s Motion[0] 10000
execute unless entity @s[tag=gh.stuck_hook] store result entity @s Motion[0] double 0.000105 run scoreboard players get $temp_xm gh.dummy
execute unless entity @s[tag=gh.stuck_hook] store result score $temp_ym gh.dummy run data get entity @s Motion[1] 10000
execute unless entity @s[tag=gh.stuck_hook] if score $temp_ym gh.dummy matches 1.. store result entity @s Motion[1] double 0.00008 run scoreboard players get $temp_ym gh.dummy
execute unless entity @s[tag=gh.stuck_hook] store result score $temp_zm gh.dummy run data get entity @s Motion[2] 10000
execute unless entity @s[tag=gh.stuck_hook] store result entity @s Motion[2] double 0.000105 run scoreboard players get $temp_zm gh.dummy
execute unless entity @s[tag=gh.stuck_hook] unless block ~ ~1 ~ #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/stick
execute unless entity @s[tag=gh.stuck_hook] unless block ~ ~-0.05 ~ #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/stick
execute unless entity @s[tag=gh.stuck_hook] unless block ~0.3 ~ ~ #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/stick
execute unless entity @s[tag=gh.stuck_hook] unless block ~-0.3 ~ ~ #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/stick
execute unless entity @s[tag=gh.stuck_hook] unless block ~ ~ ~0.3 #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/stick
execute unless entity @s[tag=gh.stuck_hook] unless block ~ ~ ~-0.3 #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/stick
execute if entity @s[tag=gh.reeling] at @a if score @s gh.player_id = @p gh.player_id as @p run function grappling_hooks:item/grappling_hook/reel
execute if block ~ ~ ~ lava at @a if score @s gh.player_id = @p gh.player_id as @p run function grappling_hooks:item/grappling_hook/cut
execute if block ~ ~ ~ water at @a if score @s gh.player_id = @p gh.player_id as @p run function grappling_hooks:item/grappling_hook/cut