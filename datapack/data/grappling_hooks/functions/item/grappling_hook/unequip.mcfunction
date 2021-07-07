tag @s remove gh.using_hook
execute as @e[tag=gh.hook] if score @s gh.player_id = @p gh.player_id run kill @s