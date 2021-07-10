clear @s knowledge_book
stopsound @s * minecraft:entity.item.pickup
function grappling_hooks:entity/player/nbt_recipe/take_recipe
scoreboard players reset @s gh.crafted_item
