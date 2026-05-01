execute as @s if items entity @s weapon.offhand *[custom_data={216:1b}] if items entity @s weapon.mainhand * run data modify storage scp:216 temp set value ""
execute as @s if items entity @s weapon.offhand *[custom_data={216:1b}] if items entity @s weapon.mainhand * run data modify storage scp:216 temp set string entity @s SelectedItem.components.minecraft:custom_name
execute as @s if items entity @s weapon.offhand *[custom_data={216:1b}] if items entity @s weapon.mainhand * run function scp:216 with storage scp:216

execute as @s unless items entity @s weapon.offhand *[custom_data={216:1b}] if items entity @s weapon.mainhand * run tellraw @s "You cannot have a item in your offhand!!"
execute as @s if items entity @s weapon.offhand *[custom_data={216:1b}] unless items entity @s weapon.mainhand * run tellraw @s "You cannot have a item in your offhand!!"

execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * run data modify storage scp:216 temp set value ""
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * run function scp:216 with storage scp:216

advancement revoke @s only scp:216