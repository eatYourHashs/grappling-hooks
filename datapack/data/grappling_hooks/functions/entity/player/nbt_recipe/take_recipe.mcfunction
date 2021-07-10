execute if entity @s[advancements={grappling_hooks:recipes/root=true}] unless entity @s[scores={gh.crafted_item=1..}] run function grappling_hooks:entity/player/nbt_recipe/give_all_recipes_packs_are_evil
advancement revoke @s through grappling_hooks:recipes/root
recipe take @s grappling_hooks:grappling_hook
recipe take @s grappling_hooks:battle_hook
