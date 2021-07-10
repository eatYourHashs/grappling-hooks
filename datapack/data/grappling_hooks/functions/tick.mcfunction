execute as @a at @s run function grappling_hooks:entity/player/tick
execute if entity @a[tag=gh.using_hook] as @e[tag=gh.hook] at @s run function grappling_hooks:item/grappling_hook/tick
execute if entity @a[tag=gh.using_bhook] as @e[tag=gh.bhook] at @s run function grappling_hooks:item/battle_hook/tick
