particle minecraft:firework
scoreboard players add @s gh.dummy 1
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] run playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 0.2 1
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] store result score $temp_xm gh.dummy run data get entity @s Motion[0] 10000
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] store result entity @s Motion[0] double 0.000105 run scoreboard players get $temp_xm gh.dummy
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] store result score $temp_ym gh.dummy run data get entity @s Motion[1] 10000
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] if score $temp_ym gh.dummy matches 1.. store result entity @s Motion[1] double 0.00008 run scoreboard players get $temp_ym gh.dummy
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] store result score $temp_zm gh.dummy run data get entity @s Motion[2] 10000
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] store result entity @s Motion[2] double 0.000105 run scoreboard players get $temp_zm gh.dummy
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~ ~1 ~ #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~ ~-0.05 ~ #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~0.3 ~ ~ #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~-0.3 ~ ~ #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~ ~ ~0.3 #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~ ~ ~-0.3 #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~ ~ ~-0.3 #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] unless block ~ ~ ~-0.3 #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/stick
execute if score @s gh.dummy matches 3.. if entity @s[tag=!gh.stuck_hook,tag=!gh.mobstuck_hook] if entity @e[tag=!global.ignore,tag=!global.ignore.pos,dx=0,dy=0,dz=0,distance=..5,type=!#grappling_hooks:not_pullable] run function grappling_hooks:item/battle_hook/mobstick
execute if entity @s[tag=gh.stuck_hook,tag=gh.reeling] at @a if score @s gh.player_id = @p gh.player_id as @p run function grappling_hooks:item/battle_hook/reel
execute if entity @s[tag=gh.mobstuck_hook,tag=gh.reeling] run function grappling_hooks:item/battle_hook/mob_reel
execute if entity @s[tag=gh.mobstuck_hook] unless entity @e[distance=..3,tag=gh.caught_mob] run function grappling_hooks:item/battle_hook/mobunstick