# fuck give all recipe packs

tellraw @s[tag=!grappling_hooks.idiot_that_installed_give_all_recipes_pack] {"translate":"commands.grappling_hooks.give_all_recipes_error: It seems that you have a mod/datapack installed that gives the player all recipes. Please disable it or performance may be drastically lowered. You can safely ignore this message if you are not worried about performance.","color":"red","bold":true}
tag @s add grappling_hooks.idiot_that_installed_give_all_recipes_pack
