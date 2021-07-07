data modify storage gh:storage SelectedItem set from entity @s SelectedItem
execute store result score $temp_0 gh.dummy run data get storage gh:storage SelectedItem.tag.Damage
execute store result score $temp_1 gh.dummy run data get storage gh:storage SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score $temp_1 gh.dummy matches 0 run scoreboard players add $temp_0 gh.dummy 1
execute if score $temp_1 gh.dummy matches 1 if predicate grappling_hooks:random/one_half run scoreboard players add $temp_0 gh.dummy 1
execute if score $temp_1 gh.dummy matches 2 if predicate grappling_hooks:random/one_third run scoreboard players add $temp_0 gh.dummy 1
execute if score $temp_1 gh.dummy matches 3.. if predicate grappling_hooks:random/one_fourth run scoreboard players add $temp_0 gh.dummy 1
execute store result storage gh:storage SelectedItem.tag.Damage int 1 run scoreboard players get $temp_0 gh.dummy
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand grappling_hooks:copy_nbt
execute if score $temp_0 gh.dummy matches 100.. run function grappling_hooks:item/grappling_hook/break