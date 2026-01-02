#RESET !
scoreboard objectives add death deathCount
scoreboard players add @a death 0


execute as @a unless entity @s[scores={death=0}] run tag @s remove 081
execute as @a unless entity @s[scores={death=0}] run tag @s remove 035b
execute as @a unless entity @s[scores={death=0}] run tag @s remove 151
execute as @a unless entity @s[scores={death=0}] run tag @s remove 154
execute as @a unless entity @s[scores={death=0}] run tag @s remove 207

execute as @a unless entity @s[scores={death=0}] run scoreboard players set @s death 0


#010
execute as @e if items entity @s armor.head *[custom_data={010b:1b}] run tag @s add 010
execute as @e[tag=010] unless items entity @s armor.head *[custom_data={010b:1b}] run tag @s remove 010


execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"die"}]}}}}] run kill @e[tag=010]
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"turn"}]}}}}] as @e[tag=010] at @s run rotate @s facing ^0.1 ^ ^
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"stop"}]}}}}] as @e[tag=010] at @s run effect give @s slowness 1 255 true
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"give"}]}}}}] unless items entity @s weapon.offhand * as @e[tag=010] at @s run item replace entity @n[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"give"}]}}}}] weapon.offhand from entity @s weapon.mainhand
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"give"}]}}}}] unless items entity @s weapon.offhand * as @e[tag=010] at @s run item replace entity @s weapon.mainhand with air
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"jump"}]}}}}] as @e[tag=010] at @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_on_ground": true}}} run data modify entity @s Motion[1] merge value 0.55
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"jump"}]}}}}] as @a[tag=010] at @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_on_ground": true}}} run tp @s ~ ~1.5 ~
execute as @a if items entity @s weapon.mainhand *[custom_data={010a:1b}] if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"jump"}]}}}}] as @a[tag=010] at @s if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_on_ground": true}}} run summon wind_charge ~ ~ ~ {Silent:1b,acceleration_power:10d,Motion:[0.0,-0.01,0.0]}


#034
execute as @a[tag=034] if predicate {"condition": "minecraft:inverted","term": {"condition": "minecraft:entity_properties","entity": "this","predicate": {"effects": {"minecraft:invisibility": {}}}}} run item replace entity @s armor.head with air
execute as @a[tag=034] if predicate {"condition": "minecraft:inverted","term": {"condition": "minecraft:entity_properties","entity": "this","predicate": {"effects": {"minecraft:invisibility": {}}}}} run tag @s remove 034


#035
execute as @e[tag=!035] if items entity @s armor.head *[custom_data={035:1b}] at @s run data modify storage scp:035 temp set value "SCP 035"
execute as @e[tag=!035] if items entity @s armor.head *[custom_data={035:1b}] at @s run data modify storage scp:035 temp set string entity @s CustomName
execute as @e[tag=!035,type=!player] if items entity @s armor.head *[custom_data={035:1b}] at @s run function scp:035_minion with storage scp:035
execute as @e[tag=!035,type=player,gamemode=survival] if items entity @s armor.head *[custom_data={035:1b}] at @s run function scp:035_minion with storage scp:035

execute as @e[type=item] if entity @e[tag=035] if entity @s[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] at @s at @n[type=player,distance=..7] as @n run function scp:035_give
execute as @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] at @s at @n[type=player,distance=..7] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] at @s at @n[type=#illager_friends,distance=..7,type=!ravager] as @n run item replace entity @s armor.head with recovery_compass[custom_data={035:1b},item_model="scp:035"]
execute as @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] at @s at @n[type=#illager_friends,distance=..7,type=!ravager] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] at @s at @n[type=#undead,distance=..7] as @n run item replace entity @s armor.head with recovery_compass[custom_data={035:1b},item_model="scp:035"]
execute as @e[type=item,nbt={Item:{id:"minecraft:recovery_compass",count:1,components:{"minecraft:custom_data":{035:1b}}}}] at @s at @n[type=#undead,distance=..7] run kill @s

execute as @e if items entity @s weapon.mainhand recovery_compass[custom_data={035:1b}] unless items entity @s armor.head * run tag @s add 035a
execute as @e[tag=035a] run item replace entity @s armor.head from entity @s weapon.mainhand
execute as @e[tag=035a] run item replace entity @s weapon.mainhand with air
execute as @e[tag=035a] run tag @s remove 035a

execute as @e if items entity @s weapon.offhand recovery_compass[custom_data={035:1b}] unless items entity @s armor.head * run tag @s add 035a
execute as @e[tag=035a] run item replace entity @s armor.head from entity @s weapon.offhand
execute as @e[tag=035a] run item replace entity @s weapon.offhand with air
execute as @e[tag=035a] run tag @s remove 035a

execute as @e[tag=035b,gamemode=survival] at @s run ride @s mount @n[tag=035]
execute as @e[tag=035b,gamemode=survival] at @s unless entity @n[distance=..3,tag=035] run kill @s
execute as @e[tag=035b,gamemode=!survival] at @s unless entity @n[distance=..1,tag=035] run effect clear @s invisibility
execute as @e[tag=035,gamemode=!survival] at @s unless entity @n[distance=..1,tag=035] run tag @s remove 035b


#081
execute as @e[tag=081,tag=!081b] run effect give @s slowness 2 1
execute as @e[tag=081a,tag=!081b] run effect give @s hunger 2
execute as @e[tag=081b] run effect give @s hunger 2 4
execute as @e[tag=081b,tag=!081c] run effect give @s speed 2
execute as @e[tag=081c] run effect give @s nausea 2
execute as @e[tag=081c] run effect give @s blindness 2
execute as @e[tag=081c] run effect give @s nausea 2 4
execute as @e[tag=081c] run data merge entity @s {Fire:10s}
execute as @e[tag=081c] run damage @s 1 on_fire

execute as @e[tag=081] at @s unless items entity @s armor.head recovery_compass[custom_data="{mask:1b}"] unless items entity @n[distance=..5,tag=!081] armor.head recovery_compass[custom_data="{mask:1b}"] if entity @n[tag=!081,distance=..4] if predicate {"condition": "minecraft:random_chance","chance":0.01} run tag @n[distance=..5,tag=!081] add 081
execute as @e[tag=081] if entity @s[type=armor_stand] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=item_frame] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=glow_item_frame] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=item] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=text_display] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=#boat] run tag @s remove 081 
execute as @e[tag=081] if entity @s[type=minecart] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=tnt] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=tnt_minecart] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=furnace_minecart] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=chest_minecart] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=command_block_minecart] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=spawner_minecart] run tag @s remove 081
execute as @e[tag=081] if entity @s[type=#arrows] run tag @s remove 081

execute as @e[tag=081,tag=!081a] if predicate {"condition": "minecraft:random_chance","chance":0.00001} run tag @s add 081a
execute as @e[tag=081a,tag=!081b] if predicate {"condition": "minecraft:random_chance","chance":0.0005} run tag @s add 081b
execute as @e[tag=081b,tag=!081c] if predicate {"condition": "minecraft:random_chance","chance":0.001} run tag @s add 081c
execute as @e[tag=081c] if predicate {"condition": "minecraft:random_chance","chance":0.002} run tag @s remove 081

execute as @e[tag=081a,tag=!081] run tag @s remove 081a
execute as @e[tag=081b,tag=!081] run tag @s remove 081b
execute as @e[tag=081c,tag=!081] run tag @s remove 081c


#117
scoreboard objectives add 117 dummy
scoreboard players add @a 117 0
execute as @a[scores={117=0}] run scoreboard players set @s 117 1
execute as @a if score @s 117 matches 20.. run scoreboard players set @s 117 1

execute as @a[tag=!117] if items entity @s weapon.mainhand *[custom_data={117:1b}] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run item replace entity @s weapon.mainhand with nether_star[unbreakable={},custom_data={117:1b},item_name="scp 117",food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:10000000,on_consume_effects:[{type:"minecraft:play_sound",sound:"block.trial_spawner.ominous_activate"}]},rarity="epic"] 1
execute as @a if items entity @s weapon.mainhand *[custom_data={117:1b}] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run advancement revoke @s only scp:117
execute as @a if items entity @s weapon.mainhand *[custom_data={117:1b}] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run tag @s remove 117

execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 1 run item replace entity @s weapon.mainhand with netherite_shovel[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"efficiency":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 2 run item replace entity @s weapon.mainhand with netherite_pickaxe[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"efficiency":5,"fortune":3}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 3 run item replace entity @s weapon.mainhand with netherite_pickaxe[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"efficiency":5,"silk_touch":1}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 4 run item replace entity @s weapon.mainhand with netherite_axe[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"efficiency":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 5 run item replace entity @s weapon.mainhand with netherite_hoe[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"efficiency":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 6 run item replace entity @s weapon.mainhand with netherite_sword[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"fire_aspect":2,"sharpness":5,"sweeping_edge":3}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 7 run item replace entity @s weapon.mainhand with shield[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic"] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 8 run item replace entity @s weapon.mainhand with elytra[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"protection":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 9 run item replace entity @s weapon.mainhand with flint_and_steel[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic"] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 10 run item replace entity @s weapon.mainhand with shears[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"efficiency":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 11 run item replace entity @s weapon.mainhand with brush[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic"] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 12 run item replace entity @s weapon.mainhand with recovery_compass[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic"] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 13 run item replace entity @s weapon.mainhand with bow[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"punch":3,"power":5,"flame":1}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 14 run item replace entity @s weapon.mainhand with spyglass[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic"] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 15 run item replace entity @s weapon.mainhand with trident[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"loyalty":3,"channeling":1,"impaling":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 16 run item replace entity @s weapon.mainhand with trident[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"riptide":3,"impaling":5,}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 17 run item replace entity @s weapon.mainhand with goat_horn[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic"] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 18 run item replace entity @s weapon.mainhand with mace[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"wind_burst":3,"fire_aspect":2,"sweeping_edge":3,"sharpness":5}] 1
execute as @a if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} if items entity @s weapon.mainhand *[custom_data={117:1b}] if score @s 117 matches 19 run item replace entity @s weapon.mainhand with mace[unbreakable={},custom_data={117:1b},item_name="scp 117",rarity="epic",enchantments={"density":5,"fire_aspect":2,"sweeping_edge":3}] 1


#120

execute as @e[tag=120a] run kill @e[tag=120a1]
execute as @e[tag=120a] run tag @s add 120a1
execute as @e[tag=120a] run tag @s remove 120a

execute as @e[tag=120b] run kill @e[tag=120b1]
execute as @e[tag=120b] run tag @s add 120b1
execute as @e[tag=120b] run tag @s remove 120b

execute as @e[tag=120a1] at @s as @a[distance=..1.5] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run tag @s add 120a2
execute as @e[tag=120b1] at @s as @a[distance=..1.5] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run tag @s add 120b2

execute as @a[tag=120a2] run advancement grant @s only scp:scp/120
execute as @a[tag=120b2] run advancement grant @s only scp:scp/120

execute as @e[tag=120a1] at @s as @a[distance=..1.5,tag=120a2] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run tp @s @n[tag=120b1]
execute as @e[tag=120b1] at @s as @a[distance=..1.5,tag=120b2] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run tp @s @n[tag=120a1]

execute as @a[tag=120a2] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run tag @s remove 120a2
execute as @a[tag=120b2] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run tag @s remove 120b2


#122
execute as @a if items entity @s weapon.mainhand *[entity_data={id:"minecraft:item_frame",Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"scp:122","minecraft:custom_data":{122:1b},"minecraft:enchantment_glint_override":true}},ItemDropChance:0f,Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["122"],Fixed:1b},custom_data={122:1b},item_model="scp:122",item_name="scp 122",rarity="epic",enchantment_glint_override=true]
execute as @a if items entity @s weapon.offhand *[entity_data={id:"minecraft:item_frame",Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"scp:122","minecraft:custom_data":{122:1b},"minecraft:enchantment_glint_override":true}},ItemDropChance:0f,Invisible:1b,Silent:1b,Invulnerable:1b,Tags:["122"],Fixed:1b},custom_data={122:1b},item_model="scp:122",item_name="scp 122",rarity="epic",enchantment_glint_override=true]

execute as @e[tag=122] at @s as @a[distance=..10] run advancement grant @s only scp:scp/122

execute as @e[tag=122] at @s as @e[distance=..11,type=!#sensitive_to_smite,type=!#inverted_healing_and_harm,type=!#sensitive_to_bane_of_arthropods,type=!creeper,type=!creaking,type=!ravager,type=!vex,tag=!178] run effect give @s glowing 1 255 true
execute as @e[tag=122] at @s as @e[distance=..9,type=!#sensitive_to_smite,type=!#inverted_healing_and_harm,type=!#sensitive_to_bane_of_arthropods,type=!creeper,type=!creaking,type=!ravager,type=!vex,tag=!178] run effect give @s regeneration 1
execute as @e[tag=122] at @s as @e[distance=..9,type=!#sensitive_to_smite,type=!#inverted_healing_and_harm,type=!#sensitive_to_bane_of_arthropods,type=!creeper,type=!creaking,type=!ravager,type=!vex,tag=!178] run effect give @s speed 1
execute as @e[tag=122] at @s as @e[distance=..9,type=!#sensitive_to_smite,type=!#inverted_healing_and_harm,type=!#sensitive_to_bane_of_arthropods,type=!creeper,type=!creaking,type=!ravager,type=!vex,tag=!178] run effect give @s resistance 1
execute as @e[tag=122] at @s as @e[distance=..9,type=!#sensitive_to_smite,type=!#inverted_healing_and_harm,type=!#sensitive_to_bane_of_arthropods,type=!creeper,type=!creaking,type=!ravager,type=!vex,tag=!178] run effect give @s fire_resistance 1
execute as @e[tag=122] at @s as @e[distance=..9,type=!#sensitive_to_smite,type=!#inverted_healing_and_harm,type=!#sensitive_to_bane_of_arthropods,type=!creeper,type=!creaking,type=!ravager,type=!vex,tag=!178] run effect give @s health_boost 1
execute as @e[tag=122] at @s as @e[distance=..10,type=#sensitive_to_smite] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=#sensitive_to_smite] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=#sensitive_to_smite] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=#inverted_healing_and_harm] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=#inverted_healing_and_harm] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=#inverted_healing_and_harm] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=creeper] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=creeper] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=creeper] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=creeper] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=creaking] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=creaking] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=creaking] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=creaking] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=ravager] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=ravager] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=ravager] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=vex] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=vex] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=vex] run kill @s
execute as @e[tag=122] at @s as @e[distance=..10,type=evoker_fangs] run effect give @s invisibility 2 255 true
execute as @e[tag=122] at @s as @e[distance=..10,type=evoker_fangs] run data merge entity @s {DeathLootTable:"minecraft:empty",Silent:1b}
execute as @e[tag=122] at @s as @e[distance=..10,type=evoker_fangs] run kill @s

#126
execute as @e[tag=126] run item replace entity @s weapon.mainhand with air
execute as @e[tag=126] run item replace entity @s weapon.offhand with air
execute as @e[tag=126] at @s run data modify entity @s wander_target set from entity @n[tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book"}}] Pos
execute as @e[tag=126] run data merge entity @s {Silent:1b,Invulnerable:1b,Age:1,Tags:["126"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b}],Offers:{}}
execute as @e[tag=126] run data remove entity @s equipment
execute as @e[tag=126] run data modify entity @s Offers set value {}
execute as @e[tag=126] at @s run particle dust{color:3223857,scale:3} ~ ~-0.3 ~ 0.1 0 0.1 0 2

execute as @e[tag=126] at @s unless data entity @s {wander_target:{}} as @n[tag=!126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book"}},distance=..3.5] if predicate {"condition": "minecraft:random_chance","chance": 0.01} run tag @s add 126a

execute as @e[tag=126a,tag=!126b] on origin run advancement grant @s only scp:scp/126

execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"hello"}]}}}},distance=..3.5] run say hello !
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"hi"}]}}}},distance=..3.5] run say hi !
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"how are you"}]}}}},distance=..3.5] run say good and you ?
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"hello"}]}}}},distance=..3.5] run say how can i help you today ?
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"spider"}]}}}},distance=..3.5] run say aaaaaaah !!!
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"you can't help me"}]}}}},distance=..3.5] run say WHAT ?! Yes I CAN !!!
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"can you help me"}]}}}},distance=..3.5] run say yes what do you need me to do ?
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"no you can't"}]}}}},distance=..3.5] run say Yes I CAN !!!
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"we will bring a spider"}]}}}},distance=..3.5] run say No don't,please...
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"how are you feeling today"}]}}}},distance=..3.5] run say Good But I would like to be told again how children's schools work...
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"how are you feeling"}]}}}},distance=..3.5] run say Good and you how are you feeling ?
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"what are you thinking about"}]}}}},distance=..3.5] run say What it would be like to have a child... I wonder how we put him to sleep at night
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want to talk of something"}]}}}},distance=..3.5] run say Yes... Do you know how to teach a child to walk? It intrigues me a lot.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"did you sleep well"}]}}}},distance=..3.5] run say Not too much, but if you want I can help you organize your day! Well... verbally, of course
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want me to describe what's on the menu today"}]}}}},distance=..3.5] run say Yes, and... do you know how to feed a young child? I was wondering.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want to listen to some music"}]}}}},distance=..3.5] run say Why not! But I'm going to stay away from the corner there... you never know what can be hidden there.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"i'm doing a little storage, you need me to move something"}]}}}},distance=..3.5] run say Oh no, no... I can't touch anything, but if you want I can help you organize the space!
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want us to watch a movie"}]}}}},distance=..3.5] run say Yes! As long as there are no big spiders in it, I should survive.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want me to bring you something"}]}}}},distance=..3.5] run say YHmm... I can't use it, but you can show me! I can give advice to help me!
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"how are you this morning"}]}}}},distance=..3.5] run say Good! Well... as long as no little eight-legged animal is invited.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want to talk a little or do you prefer calm"}]}}}},distance=..3.5] run say I can talk! Especially if your colleague is around, the one who tells clever jokes.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"you want me to turn on the light"}]}}}},distance=..3.5] run say Yes, I would like to see if something is sneaking into a corner.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want me to tell you what I did yesterday"}]}}}},distance=..3.5] run say Yes! And I can help you analyze your day if you want. I love to help.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"can i open the door for a moment"}]}}}},distance=..3.5] run say Yes, as long as nothing small, hairy and with too many eyes passes.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"are you hungry"}]}}}},distance=..3.5] run say Not really, but I can help you make your shopping list! Without touching, of course.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"are you bored"}]}}}},distance=..3.5] run say A little. But i can help you organize your day, if you want!
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want me to bring you a book"}]}}}},distance=..3.5] run say I can't hold it... but you can read it aloud and I'll help you summarize it.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"would you like to watch a movie"}]}}}},distance=..3.5] run say Yes. No giant spiders, please.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want someone else to come and see you"}]}}}},distance=..3.5] run say Yes, please.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want to talk about a particular subject"}]}}}},distance=..3.5] run say Sometimes... how to raise a child.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"did you have any dreams last night"}]}}}},distance=..3.5] run say Yes... one where I had to protect a child. I wonder how we do this in real life.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you feel stressed"}]}}}},distance=..3.5] run say Just a little. It's normal, right? Especially if we think of the little things that crawl.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"are you stressed"}]}}}},distance=..3.5] run say Just a little. It's normal, right? Especially if we think of the little things that crawl.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you prefer morning or afternoon"}]}}}},distance=..3.5] run say Morning. It's easier to help people in the morning.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"can i ask you a strange question"}]}}}},distance=..3.5] run say Of course! I am used to it. As long as it's not a question about a spider.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"can I ask you a personal question"}]}}}},distance=..3.5] run say Yes, as long as it's not about insects... but you can tell me about families if you want.
execute as @e[tag=126] at @s if entity @n[tag=126a,tag=!126b,type=item,nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:writable_book_content":{pages:[{raw:"do you want us to talk about nothing, just like that"}]}}}},distance=..3.5] run say Yes! Talking is already helping someone, right?


execute as @e[tag=126] at @s as @n[tag=!126b,tag=126a,type=item,nbt={Item:{id:"minecraft:writable_book"}},distance=..3.5] run tag @s add 126b


#129
execute as @e[type=item] if data entity @s {Item:{id:"minecraft:red_mushroom"}} unless data entity @s {"minecraft:custom_data":{129:1b}} run data merge entity @s {Item:{id:"minecraft:red_mushroom",components:{"minecraft:lore":[{"color":"light_purple","text":"scp 129"}],"minecraft:custom_data":{129:1b}}}}
execute as @e[type=item] if data entity @s {Item:{id:"minecraft:brown_mushroom"}} unless data entity @s {"minecraft:custom_data":{129:1b}} run data merge entity @s {Item:{id:"minecraft:brown_mushroom",components:{"minecraft:lore":[{"color":"light_purple","text":"scp 129"}],"minecraft:custom_data":{129:1b}}}}


#151
execute as @e[type=!painting] at @s positioned ^ ^1 ^3 if entity @n[type=painting,nbt={variant:"minecraft:water"},distance=..2] if predicate {"condition": "minecraft:random_chance","chance": 0.005} run tag @s add 151
execute as @a[tag=151,gamemode=!survival] run tag @s remove 151
execute as @e[tag=151] run damage @s 1 drown

#154
execute as @e[tag=!154] at @s if items entity @s weapon.offhand recovery_compass[custom_data={154:1b}] run tag @s add 154
execute as @e[tag=154,type=!player] at @s unless items entity @s weapon.offhand recovery_compass[custom_data={154:1b}] run kill @s
execute as @e[tag=154,type=player,gamemode=survival] at @s unless items entity @s weapon.offhand recovery_compass[custom_data={154:1b}] run kill @s
execute as @a[tag=154,gamemode=!survival] run tag @s remove 154


#175
execute as @e[type=item] if entity @s[type=item,nbt={Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:item_name":{"translate":"filled_map.buried_treasure"}}}}] unless data entity @s {"minecraft:custom_data":{175:1b}} run data merge entity @s {Item:{components:{"minecraft:lore":[{"color":"light_purple","text":"scp 175"}],"minecraft:custom_data":{175:1b}}}}


#178
execute as @a if items entity @s armor.head *[custom_data={178:1b}] run tag @s add 178
execute as @a unless items entity @s armor.head *[custom_data={178:1b}] run tag @s remove 178
execute as @a[tag=178] at @s as @e[distance=..50,tag=!178,type=!experience_orb,type=!#fall_damage_immune,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] at @s run particle campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0 5
execute as @a[tag=178] at @s as @e[distance=..3.5,tag=!178,type=!experience_orb,type=!#fall_damage_immune,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] if predicate {"condition": "minecraft:random_chance","chance": 0.2} run damage @p 1 mob_attack by @s from @s
execute as @a[tag=178] at @s as @e[distance=..15,tag=!178,type=!experience_orb,type=!#fall_damage_immune,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] run rotate @s facing entity @n[tag=178] eyes
execute as @a[tag=178] at @s as @e[distance=..15,tag=!178,type=!experience_orb,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] run data modify entity @s last_hurt_by_player set from entity @n[tag=178] UUID
execute as @a[tag=178] at @s as @e[distance=..15,tag=!178,type=!experience_orb,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] run data modify entity @s last_hurt_by_player_memory_time set value 0
execute as @a[tag=178] at @s as @e[distance=..15,tag=!178,type=!experience_orb,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] run data modify entity @s last_hurt_by_mob set from entity @n[tag=178] UUID
execute as @a[tag=178] at @s as @e[distance=..15,tag=!178,type=!experience_orb,type=!#minecraft:axolotl_always_hostiles,type=!item,type=!#minecraft:arrows,type=!item_frame] if entity @s[type=!interaction,type=!item_display,type=!#boat,type=!glow_item_frame,type=!armor_stand,type=!minecart,type=!minecraft:tnt,type=!minecraft:chest_minecart,type=!hopper_minecart,type=!chest_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!painting] run data modify entity @s HurtBy set from entity @n[tag=178] UUID

#207
scoreboard objectives add 207 dummy
scoreboard players add @e[tag=207] 207 0

execute as @e[tag=!207] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"effects": {"minecraft:weakness": {"amplifier": 2,"duration": -1,"ambient": false,"visible": false}}}} run scoreboard players set @s 207 2000
execute as @e[tag=!207] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"effects": {"minecraft:weakness": {"amplifier": 2,"duration": -1,"ambient": false,"visible": false}}}} run tag @s add 207

execute as @e[tag=207] unless score @s 207 matches 2000 run title @s actionbar [{"bold":true,"color":"dark_red","text":"time left to drink cola: "},{"bold":true,"color":"black","score":{"name":"@s","objective":"207"}}]

scoreboard players remove @e[tag=207] 207 1
execute as @e[tag=207] if score @s 207 matches ..0 run damage @s 10000000 dry_out
execute as @e[tag=207] if score @s 207 matches ..0 run effect clear @s weakness
execute as @e[tag=207] if score @s 207 matches ..0 run tag @s remove 207


#216

execute as @a if items entity @s weapon.offhand *[custom_data={216:1b}] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} if items entity @s weapon.mainhand *[custom_name] run tag @s add 216
execute as @a[tag=216] run data modify storage scp:216 temp set value ""
execute as @a[tag=216] run data modify storage scp:216 temp set string entity @s SelectedItem.components.minecraft:custom_name
execute as @a[tag=216] run function scp:216 with storage scp:216
execute as @a[tag=216] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run tag @s remove 216


#226
scoreboard objectives add 226 dummy
scoreboard players add @a 226 0
execute as @a[scores={226=0}] store result score @s 226 run random value 1..7

execute as @a if items entity @s player.crafting.0 *[custom_data={226a:1b}] if items entity @s player.crafting.1 *[custom_data={226a:1b}] if items entity @s player.crafting.2 *[custom_data={226a:1b}] if items entity @s player.crafting.3 *[custom_data={226a:1b}] run tag @s add 226a

execute as @a[tag=226a] run item replace entity @s player.crafting.0 with air
execute as @a[tag=226a] run item replace entity @s player.crafting.1 with air
execute as @a[tag=226a] run item replace entity @s player.crafting.2 with air
execute as @a[tag=226a] run item replace entity @s player.crafting.3 with air

execute as @a[tag=226a] if entity @s[scores={226=1}] run give @s recovery_compass[item_model="scp:226b1",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1
execute as @a[tag=226a] if entity @s[scores={226=2}] run give @s recovery_compass[item_model="scp:226b2",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1
execute as @a[tag=226a] if entity @s[scores={226=3}] run give @s recovery_compass[item_model="scp:226b3",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1
execute as @a[tag=226a] if entity @s[scores={226=4}] run give @s recovery_compass[item_model="scp:226b4",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1
execute as @a[tag=226a] if entity @s[scores={226=5}] run give @s recovery_compass[item_model="scp:226b5",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1
execute as @a[tag=226a] if entity @s[scores={226=6}] run give @s recovery_compass[item_model="scp:226b6",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1
execute as @a[tag=226a] if entity @s[scores={226=7}] run give @s recovery_compass[item_model="scp:226b7",item_name="scp 226b",rarity="epic",custom_data={226b:1b},max_stack_size=1] 1

execute as @a[tag=226a] run tag @s remove 226a


#291
execute as @a if items entity @s weapon.mainhand crafting_table run item replace entity @s weapon.mainhand with crafting_table[lore=[{"color":"light_purple","text":"scp 291"}]]
execute as @a if items entity @s weapon.offhand crafting_table run item replace entity @s weapon.offhand with crafting_table[lore=[{"color":"light_purple","text":"scp 291"}]]
execute as @a if items entity @s weapon.mainhand crafter run item replace entity @s weapon.mainhand with crafter[lore=[{"color":"light_purple","text":"scp 291"}]]
execute as @a if items entity @s weapon.offhand crafter run item replace entity @s weapon.offhand with crafter[lore=[{"color":"light_purple","text":"scp 291"}]]


#301
execute as @a if items entity @s weapon.mainhand ender_pearl run item replace entity @s weapon.mainhand with ender_pearl[lore=[{"color":"light_purple","text":"scp 301"}]]
execute as @a if items entity @s weapon.offhand ender_pearl run item replace entity @s weapon.offhand with ender_pearl[lore=[{"color":"light_purple","text":"scp 301"}]]


#308
scoreboard objectives add 309 dummy

execute as @a if items entity @s weapon.mainhand *[custom_data={309:1b}] run scoreboard players add @s 309 0

execute as @a[scores={309=..308},gamemode=survival] if items entity @s weapon.mainhand *[custom_data={309:1b}] run scoreboard players add @s 309 1
execute as @a[scores={309=..308},gamemode=survival] if items entity @s weapon.offhand *[custom_data={309:1b}] run scoreboard players add @s 309 1
execute as @a[scores={309=1..}] unless items entity @s weapon.mainhand *[custom_data={309:1b}] unless items entity @s weapon.offhand *[custom_data={309:1b}] run scoreboard players remove @s 309 1

execute as @a if score @s 309 matches 50.. run effect give @s nausea 15
execute as @a if score @s 309 matches 100.. run effect give @s nausea 15 2
execute as @a if score @s 309 matches 200.. run effect give @s nausea 15 9
execute as @a at @s if score @s 309 matches 309 run function scp:309


#323

execute as @e[tag=!323a] if items entity @s armor.head *[custom_data={323:1b}] run tag @s add 323a
execute as @e[tag=323a] unless items entity @s armor.head *[custom_data={323:1b}] run tag @s remove 323a
execute as @e[tag=323a] at @s run item replace entity @s armor.head with recovery_compass[item_model="scp:323",item_name="scp 323",rarity="epic",equippable={slot:"head",equip_sound:"block.bone_block.break"},custom_data={323:1b},enchantments={binding_curse:1}]

execute as @e[tag=323a] at @s as @e[distance=1..15,tag=!323e] if entity @s[type=!item,type=!experience_orb,type=!armor_stand,type=!#arrows,type=!#boat,type=!#impact_projectiles,type=!minecart,type=!tnt] if entity @s[type=!tnt_minecart,type=!furnace_minecart,type=!item_frame,type=!glow_item_frame] run tag @s add 323
execute as @e at @s unless entity @e[distance=1..15,tag=323a] run tag @s remove 323
execute as @e[tag=323,tag=!323e] at @s unless entity @e[distance=..2.5,tag=323e] run summon pig ~ ~-0.5 ~ {Tags:["323e"],Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty"}
execute as @e[tag=323,tag=!323e] at @s run ride @e[distance=..2.5,tag=323e,limit=1] mount @s
execute as @e[tag=323,tag=!323e] at @s run effect give @s invisibility 3 255 true
execute as @e[tag=323e] at @s unless entity @e[distance=1..15.5,tag=323a] run kill @s


#365

execute as @e if items entity @s weapon.mainhand *[custom_data={365:1b}] at @s if block ~ ~ ~ water if block ~ ~-1 ~ water if block ~ ~1 ~ water run tp @s ~ ~-0.4 ~
execute as @e if items entity @s weapon.offhand *[custom_data={365:1b}] at @s if block ~ ~ ~ water if block ~ ~-1 ~ water if block ~ ~1 ~ water run tp @s ~ ~-0.4 ~
