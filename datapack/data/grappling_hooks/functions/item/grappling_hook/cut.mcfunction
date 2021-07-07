tag @s remove gh.using_hook
playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 0.7
execute as @e[tag=gh.hook] if score @s gh.player_id = @p gh.player_id run kill @s
effect clear @s levitation