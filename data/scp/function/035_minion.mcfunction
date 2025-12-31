$summon zombie ~ ~ ~ {CanPickUpLoot:1b,Health:60f,IsBaby:0b,CanBreakDoors:1b,Tags:["035"],equipment:{head:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:item_model":"scp:035","minecraft:enchantments":{"binding_curse":1},"minecraft:item_name":"scp 035","minecraft:rarity":"epic","minecraft:equippable":{slot:"head"},"minecraft:custom_data":{035:1b}}}},drop_chances:{head:100.000},attributes:[{id:"minecraft:max_health",base:30}],CustomName:"$(temp)",CustomNameVisible:1b,PersistenceRequired:1b}
tag @s add 035b
ride @s mount @n[tag=035]
effect give @s invisibility infinite 255 true
item replace entity @s armor.head with air
item replace entity @n[tag=035] weapon.mainhand from entity @s weapon.mainhand
item replace entity @n[tag=035] weapon.offhand from entity @s weapon.offhand
item replace entity @n[tag=035] armor.feet from entity @s armor.feet
item replace entity @n[tag=035] armor.legs from entity @s armor.legs
item replace entity @n[tag=035] armor.chest from entity @s armor.chest

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air