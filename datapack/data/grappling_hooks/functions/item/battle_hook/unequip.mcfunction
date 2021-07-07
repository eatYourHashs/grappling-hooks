tag @s remove gh.using_bhook
execute as @e[tag=gh.bhook,tag=gh.mobstuck_hook] if score @s gh.player_id = @p gh.player_id as @e[distance=..3,tag=gh.caught_mob,sort=nearest,limit=1] run function grappling_hooks:item/battle_hook/mob_released
execute as @e[tag=gh.bhook] if score @s gh.player_id = @p gh.player_id run kill @s