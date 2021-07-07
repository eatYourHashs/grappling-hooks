playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 0.7
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 20
tag @s add gh.stuck_hook
data modify entity @s NoGravity set value 1b
data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute at @a if score @s gh.player_id = @p gh.player_id as @p run function grappling_hooks:item/grappling_hook/use_dura