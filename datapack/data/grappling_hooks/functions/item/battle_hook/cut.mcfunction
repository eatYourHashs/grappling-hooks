tag @s remove gh.using_bhook
playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 0.7
execute as @e[tag=gh.bhook,tag=gh.mobstuck_hook] if score @s gh.player_id = @p gh.player_id at @s as @e[distance=..3,tag=gh.caught_mob,sort=nearest,limit=1] run function grappling_hooks:item/battle_hook/mob_released
execute as @e[tag=gh.bhook] if score @s gh.player_id = @p gh.player_id run kill @s
effect clear @s levitation