playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 0.7
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 20
tag @s add gh.mobstuck_hook
data modify entity @s NoGravity set value 1b
data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute at @a if score @s gh.player_id = @p gh.player_id as @p run function grappling_hooks:item/battle_hook/use_double_dura
tag @e[tag=!global.ignore,tag=!global.ignore.pos,dx=0,dy=0,dz=0,distance=..5,type=!#grappling_hooks:not_pullable,limit=1,sort=nearest] add gh.caught_mob