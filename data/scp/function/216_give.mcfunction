execute as @s unless items entity @s weapon.offhand * if items entity @s weapon.mainhand * run data modify storage scp:216 temp set value ""
execute as @s unless items entity @s weapon.offhand * if items entity @s weapon.mainhand * run data modify storage scp:216 temp set string entity @s SelectedItem.components.minecraft:custom_name
execute as @s unless items entity @s weapon.offhand * if items entity @s weapon.mainhand * run function scp:216 with storage scp:216
