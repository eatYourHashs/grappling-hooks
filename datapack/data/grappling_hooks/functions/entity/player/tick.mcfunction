execute if score @s gh.wfstick matches 1.. run function grappling_hooks:entity/player/wfstick
execute unless entity @s[tag=gh.processed] run function grappling_hooks:entity/player/processing
execute if entity @s[tag=gh.using_hook,nbt=!{SelectedItem:{tag:{gh_id:"grappling_hook"}}}] run function grappling_hooks:item/grappling_hook/unequip
execute if score @s gh.delay matches 1.. run scoreboard players remove @s gh.delay 1
execute if score @s gh.delay matches 1 run function grappling_hooks:item/grappling_hook/release
execute if entity @s[tag=gh.using_bhook,nbt=!{SelectedItem:{tag:{gh_id:"battle_hook"}}}] run function grappling_hooks:item/battle_hook/unequip
execute if score @s gh.bdelay matches 1.. run scoreboard players remove @s gh.bdelay 1
execute if score @s gh.bdelay matches 1 run function grappling_hooks:item/battle_hook/release