scoreboard players add $5t gh.dummy 1
execute if score $5t gh.dummy matches 5.. run function grappling_hooks:5tick
execute as @a at @s run function grappling_hooks:entity/player/tick
execute if entity @a[tag=gh.using_hook] as @e[tag=gh.hook] at @s run function grappling_hooks:item/grappling_hook/tick
execute if entity @a[tag=gh.using_bhook] as @e[tag=gh.bhook] at @s run function grappling_hooks:item/battle_hook/tick