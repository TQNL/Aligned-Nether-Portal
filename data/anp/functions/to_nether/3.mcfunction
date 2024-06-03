execute if block ~ ~ ~ nether_portal run return run function anp:to_nether/clean
execute if predicate anp:nether_check at @s run return run function anp:to_nether/4 with storage anp:nether_portal_pos
execute positioned ~ ~-1 ~ run function anp:to_nether/3