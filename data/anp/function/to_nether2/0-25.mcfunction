# find edge of portal
## add # to names
scoreboard players add east anp_distance 0
scoreboard players add south anp_distance 0
scoreboard players add west anp_distance 0
scoreboard players add north anp_distance 0
execute positioned ~1 ~ ~ if block ~ ~ ~ nether_portal run function anp:to_nether2/0-5 {positioning:"~1 ~ ~",direction:"east",antidirection:"west"}
execute positioned ~ ~ ~1 if block ~ ~ ~ nether_portal run function anp:to_nether2/0-5 {positioning:"~ ~ ~1",direction:"south",antidirection:"north"}
execute positioned ~-1 ~ ~ if block ~ ~ ~ nether_portal run function anp:to_nether2/0-5 {positioning:"~-1 ~ ~",direction:"west",antidirection:"east"}
execute positioned ~ ~ ~-1 if block ~ ~ ~ nether_portal run function anp:to_nether2/0-5 {positioning:"~ ~ ~-1",direction:"north",antidirection:"south"}
# if the distance comparison ever gets removed, use run return run
