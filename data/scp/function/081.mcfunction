execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} if items entity @s weapon.offhand wooden_sword[custom_data="{081:1b}"] unless items entity @s weapon.mainhand wooden_sword[custom_data="{081:1b}"] run item replace entity @s weapon.offhand with air
execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} if items entity @s weapon.mainhand wooden_sword[custom_data="{081:1b}"] run item replace entity @s weapon.mainhand with air

execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} as @s at @s positioned ^ ^ ^1.5 if entity @n[distance=..1.2] if items entity @s weapon.offhand wooden_sword[custom_data="{081:1b}"] unless items entity @s weapon.mainhand wooden_sword[custom_data="{081:1b}"] run item replace entity @s weapon.offhand with air
execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} as @s at @s positioned ^ ^ ^1.5 if entity @n[distance=..1.2] if items entity @s weapon.mainhand wooden_sword[custom_data="{081:1b}"] run item replace entity @s weapon.mainhand with air

execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run tag @s add 081

execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} as @s at @s positioned ^ ^ ^1.5 if entity @n[distance=..1.2] run tag @n[distance=..1.2] add 081
advancement revoke @s only scp:081


execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run advancement grant @s only scp:scp/081
execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} at @s positioned ^ ^ ^1.5 if entity @n[distance=..1.2] run advancement grant @s only scp:scp/081

execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} if items entity @s armor.head *[custom_data={mask:1b}] run advancement grant @s only scp:scp/mask
execute as @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} at @s positioned ^ ^ ^1.5 if entity @n[distance=..1.2] if items entity @s armor.head *[custom_data={mask:1b}] run advancement grant @s only scp:scp/mask
