playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 0.2 1
effect give @s minecraft:levitation 1 255 true
tp ~ ~0.1 ~
execute as @e[tag=gh.reeling] if score @s gh.player_id = @p gh.player_id run tag @s add gh.reel_hook
execute facing entity @e[tag=gh.reel_hook,limit=1] feet positioned ^ ^ ^1 unless block ~ ~ ~ #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/cut
execute facing entity @e[tag=gh.reel_hook,limit=1] feet positioned ^ ^ ^1 unless block ~ ~1.8 ~ #grappling_hooks:not_solid run function grappling_hooks:item/grappling_hook/cut
execute if entity @s[tag=gh.using_hook] facing entity @e[tag=gh.reel_hook,limit=1] feet positioned ^ ^ ^1 if block ~ ~ ~ #grappling_hooks:not_solid if block ~ ~1.8 ~ #grappling_hooks:not_solid run tp @s ~ ~ ~ ~ ~
execute at @s if entity @e[tag=gh.reel_hook,distance=..1.1] run function grappling_hooks:item/grappling_hook/cut
tag @e[tag=gh.reel_hook] remove gh.reel_hook