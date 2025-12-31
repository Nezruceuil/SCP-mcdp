execute if block ^ ^1 ^1 iron_door[open=false] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run function scp:005_open
execute if block ^ ^1 ^1 iron_door[open=true] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run function scp:005_close

execute if block ^ ^ ^0.1 iron_trapdoor[open=false] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": false}}} run function scp:005_open
execute if block ^ ^ ^0.1 iron_trapdoor[open=true] if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"flags": {"is_sneaking": true}}} run function scp:005_close

advancement revoke @s only scp:005
