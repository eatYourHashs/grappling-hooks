playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 0.2 1
data modify entity @e[distance=..3,tag=gh.caught_mob,sort=nearest,limit=1] NoGravity set value 1b
tp ~ ~0.05 ~
execute at @a[tag=gh.using_bhook] if score @s gh.player_id = @p gh.player_id run tag @p add gh.reel_hook
execute facing entity @a[tag=gh.reel_hook,limit=1] feet positioned ^ ^ ^1 unless block ~ ~ ~ #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/cut
execute facing entity @a[tag=gh.reel_hook,limit=1] feet positioned ^ ^ ^1 unless block ~ ~1.8 ~ #grappling_hooks:not_solid run function grappling_hooks:item/battle_hook/cut
execute facing entity @a[tag=gh.reel_hook,limit=1] feet positioned ^ ^ ^1 if block ~ ~ ~ #grappling_hooks:not_solid if block ~ ~1.8 ~ #grappling_hooks:not_solid run tp @s ~ ~ ~ ~ ~
execute at @s as @a[tag=gh.reel_hook,distance=..1.1] at @s run function grappling_hooks:item/battle_hook/cut
tp @e[distance=..3,tag=gh.caught_mob,sort=nearest,limit=1] @s
tag @a[tag=gh.reel_hook] remove gh.reel_hook