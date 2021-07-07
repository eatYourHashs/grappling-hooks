execute if entity @s[nbt={SelectedItem:{tag:{gh_id:"grappling_hook"}}}] run function grappling_hooks:item/grappling_hook/use
execute if entity @s[nbt={SelectedItem:{tag:{gh_id:"battle_hook"}}}] run function grappling_hooks:item/battle_hook/use
scoreboard players set @s gh.wfstick 0